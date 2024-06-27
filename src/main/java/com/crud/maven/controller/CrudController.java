package com.crud.maven.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class CrudController {

    @GetMapping("/hello")
    public String helloWorld() {
        return "Hello World BOYS and GIRLS ATTE: LUIS";
    }


}