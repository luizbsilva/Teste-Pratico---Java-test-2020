package br.com.challenge.api.model;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Getter
@Setter
@EqualsAndHashCode
@Entity
public class SpecialtyHealthProvider {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(columnDefinition = "healthProviderId",referencedColumnName = "id")
    private HealthProvider healthProvider;

    @ManyToOne
    @JoinColumn(columnDefinition = "medicalSpecialtyId",referencedColumnName = "id")
    private MedicalSpecialty medicalSpecialty;
}
