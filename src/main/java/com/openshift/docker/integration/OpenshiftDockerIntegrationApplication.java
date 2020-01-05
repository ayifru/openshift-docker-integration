package com.openshift.docker.integration;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.circuitbreaker.EnableCircuitBreaker;

@SpringBootApplication
@EnableAdminServer
@EnableCircuitBreaker
public class OpenshiftDockerIntegrationApplication {

    public static void main(String[] args) {
        SpringApplication.run(OpenshiftDockerIntegrationApplication.class, args);
    }

}
