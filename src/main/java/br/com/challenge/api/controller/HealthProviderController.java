package br.com.challenge.api.controller;

import br.com.challenge.api.dto.HealthProviderDTO;
import br.com.challenge.api.model.MedicalSpecialty;
import br.com.challenge.api.repository.MedicalSpecialtyRepository;
import br.com.challenge.api.service.HealthProviderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class HealthProviderController {

    @Autowired
    private HealthProviderService healthProviderService;

    @Autowired
    private MedicalSpecialtyRepository medicalSpecialtyRepository;

    @GetMapping("/health-provider")
    public ResponseEntity<List<HealthProviderDTO>> consultaPrestadores(double longitude, double latitude, int specialtyId) {
        List<HealthProviderDTO> healthProviderDTOList = healthProviderService.searchProviderByLocation(latitude, longitude, specialtyId);
        return ResponseEntity.ok(healthProviderDTOList);

    }

    @GetMapping("/specialty")
    public ResponseEntity<List<MedicalSpecialty>> listaTodasEspecialidades() {
        List<MedicalSpecialty> medicalSpecialtyList = medicalSpecialtyRepository.findAll();
        return ResponseEntity.ok(medicalSpecialtyList);
    }
}
