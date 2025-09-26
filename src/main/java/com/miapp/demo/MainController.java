package com.miapp.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping("/")
    public String home() {
        return "<h1>Andres Ovando Morales</h1><p>Carnet: 24000581</p>";
    }
}
