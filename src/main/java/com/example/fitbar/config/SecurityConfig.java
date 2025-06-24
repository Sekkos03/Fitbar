package com.example.fitbar.config;

import java.util.List;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;


@Configuration
@EnableWebSecurity
public class SecurityConfig {
  @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
         // Configure SecurityFilterChain using Lambda DSL
         http
         .csrf(csrf -> csrf.disable()) // Disable CSRF
         .cors(cors -> cors.disable())
         .authorizeHttpRequests(auth -> auth
         .anyRequest().permitAll());

     return http.build();
    }

  @Bean
  CorsConfigurationSource corsConfigurationSource() {
    CorsConfiguration config = new CorsConfiguration();
    config.setAllowedOrigins(List.of("http://localhost:3000", "http://localhost:8080","ttps://fitbar-wine.vercel.app"));
    config.setAllowedMethods(List.of("GET","POST","OPTIONS"));
    config.setAllowedHeaders(List.of("*"));
    UrlBasedCorsConfigurationSource src = new UrlBasedCorsConfigurationSource();
    src.registerCorsConfiguration("/api/**", config);
    return src;
  }
}
