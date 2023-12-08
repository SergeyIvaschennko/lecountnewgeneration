package org.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class HelloWorldRestAppApplication extends SpringBootServletInitializer {
    public static void main(String[] args) {
        SpringApplication.run(HelloWorldRestAppApplication.class, args);
    }
}