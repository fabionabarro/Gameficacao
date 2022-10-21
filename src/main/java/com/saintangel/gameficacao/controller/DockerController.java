package com.saintangel.gameficacao.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/gameficacao")
public class DockerController {

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public void gameficacao() {
        log.info("chamada para esse endpoint");
    }
}
