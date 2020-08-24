package br.com.challenge.api.service;

import br.com.challenge.api.dto.HealthProviderDTO;
import br.com.challenge.api.model.HealthProvider;
import br.com.challenge.api.model.MedicalSpecialty;
import br.com.challenge.api.model.SpecialtyHealthProvider;
import br.com.challenge.api.repository.SpecialtyHealthProviderRepository;
import br.com.challenge.api.repository.MedicalSpecialtyRepository;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
public class HealthProviderService {

    @Autowired
    private SpecialtyHealthProviderRepository specialtyHealthProviderRepository;

    @Autowired
    private MedicalSpecialtyRepository medicalSpecialtyRepository;

    public List<HealthProviderDTO> searchProviderByLocation(double latitude, double longitude, long codigoEspecialidade) {
        try {

            Optional<MedicalSpecialty> optionalMedicalSpecialty = medicalSpecialtyRepository.findById(codigoEspecialidade);

            if (!optionalMedicalSpecialty.isPresent()) {
                throw new RuntimeException("Especialidade não encontrada");
            }

            MedicalSpecialty medicalSpecialty = optionalMedicalSpecialty.get();

            List<HealthProviderDTO> prestadorList = new ArrayList<>();
            List<SpecialtyHealthProvider> specialtyHealthProviderList = specialtyHealthProviderRepository.findByMedicalSpecialty(medicalSpecialty);

            String stringGoogleMaps = callGoogleMaps(latitude, longitude, specialtyHealthProviderList);

            JSONObject jGoogleMaps = new JSONObject(stringGoogleMaps);

            JSONArray jDistanciasArray = jGoogleMaps.getJSONArray("rows").getJSONObject(0).getJSONArray("elements");

            for (int i = 0; i < jDistanciasArray.length(); i++) {

                HealthProvider healthProvider = specialtyHealthProviderList.get(i).getHealthProvider();
                JSONObject jDistance = jDistanciasArray.getJSONObject(i);
                String status = jDistance.getString("status");

                if ("OK".equals(status)) {

                    JSONObject jsonDistance = jDistance.getJSONObject("distance");
                    double value = jsonDistance.getDouble("value");

                    HealthProviderDTO dto = new HealthProviderDTO();
                    dto.setDistanceKM(new BigDecimal(value / 1000).setScale(2, RoundingMode.HALF_UP).doubleValue());
                    dto.setAddress(healthProvider.getAddress());
                    dto.setLatitude(healthProvider.getLatitude());
                    dto.setLongitude(healthProvider.getLongitude());
                    dto.setName(healthProvider.getHealthProviderName());

                    prestadorList.add(dto);

                }
            }

            Collections.sort(prestadorList);

            return prestadorList;

        } catch (Exception e) {

            throw new RuntimeException(e.getMessage());

        }

    }

    private String callGoogleMaps(double latitude, double longitude,
                                  List<SpecialtyHealthProvider> specialtyHealthProviderList) throws URISyntaxException {

        RestTemplate restTemplate = new RestTemplate();
        StringBuilder enderecoAPI = new StringBuilder("https://maps.googleapis.com/maps/api/distancematrix/json?");

        enderecoAPI.append("key=AIzaSyDC45Z954vEbWg5tkDq0oIZgVYAM9y20No");
        enderecoAPI.append("&units=metric");
        enderecoAPI.append("&language=pt-BR");
        enderecoAPI.append("&origins=" + latitude + "," + longitude);


        StringBuilder addressHealthProvider = new StringBuilder("");

        for (SpecialtyHealthProvider specialtyHealthProvider : specialtyHealthProviderList) {

            HealthProvider healthProvider = specialtyHealthProvider.getHealthProvider();
            addressHealthProvider.append(healthProvider.getLatitude() + "," + healthProvider.getLongitude() + "%7C");

        }

        if (addressHealthProvider.length() > 3) {
            addressHealthProvider = new StringBuilder(addressHealthProvider.substring(0, addressHealthProvider.length() - 4));

        }

        enderecoAPI.append("&destinations=" + addressHealthProvider.toString());

        URI uri = new URI(enderecoAPI.toString());

        String forObject = restTemplate.getForObject(uri, String.class);
        return forObject;
    }
}
