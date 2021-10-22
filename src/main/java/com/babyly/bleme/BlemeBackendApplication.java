package com.babyly.bleme;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.babyly.bleme.mapper")
public class BlemeBackendApplication {

	public static void main(String[] args) {
		SpringApplication.run(BlemeBackendApplication.class, args);
	}

}
