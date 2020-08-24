package br.com.challenge.api.dto;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@EqualsAndHashCode
public class HealthProviderDTO implements Comparable<HealthProviderDTO>{

    private String name;

    private String address;

    private double latitude;

    private double longitude;

    private double distanceKM;

    @Override
    public int compareTo(HealthProviderDTO healthProviderDTO) {
        return (this.getDistanceKM() < healthProviderDTO.getDistanceKM() ? -1 : (this.getDistanceKM() == healthProviderDTO.getDistanceKM() ? 0 : 1));
    }

}
