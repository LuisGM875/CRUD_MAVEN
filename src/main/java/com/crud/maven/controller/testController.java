package com.crud.maven.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/dockerized-spring-boot")
public class testController {

    @RequestMapping("/testMaven")
    public String test() {
        return "Hello World";
    }
}
