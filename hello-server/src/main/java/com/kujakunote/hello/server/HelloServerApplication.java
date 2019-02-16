package com.kujakunote.hello.server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Random;
import java.util.concurrent.TimeUnit;

@SpringBootApplication
@RestController
public class HelloServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(HelloServerApplication.class, args);
    }

    @GetMapping("/")
    public String hello() throws InterruptedException {
        TimeUnit.MILLISECONDS.sleep(new Random().nextInt(1_000) + 500);

        return "Hello!";
    }
}
