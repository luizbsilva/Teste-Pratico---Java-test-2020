package br.com.challenge.api.dto;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
public class ErrosFoundDTO {
    private List<String> erros;

}
