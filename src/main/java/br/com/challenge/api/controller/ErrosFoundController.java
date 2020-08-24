package br.com.challenge.api.controller;

import br.com.challenge.api.dto.ErrosFoundDTO;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.util.Arrays;

@RestControllerAdvice
public class ErrosFoundController {

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST)
    public ErrosFoundDTO exception(Exception ex) {

        ErrosFoundDTO errosFoundDTO = new ErrosFoundDTO();
        errosFoundDTO.setErros(Arrays.asList(ex.getMessage()));

        return errosFoundDTO;

    }
}
