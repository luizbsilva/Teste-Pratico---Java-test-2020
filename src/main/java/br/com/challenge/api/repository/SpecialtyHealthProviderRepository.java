package br.com.challenge.api.repository;

import br.com.challenge.api.model.MedicalSpecialty;
import br.com.challenge.api.model.SpecialtyHealthProvider;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SpecialtyHealthProviderRepository extends JpaRepository<SpecialtyHealthProvider, Long> {

    List<SpecialtyHealthProvider> findByMedicalSpecialty(MedicalSpecialty medicalSpecialty);
}
