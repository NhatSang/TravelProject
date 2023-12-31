package com.se.fit.TravelProject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "com.se.fit.TravelProject")
public class TravelProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(TravelProjectApplication.class, args);
	}

}
