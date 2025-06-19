package com.example.fitbar.controller;

import com.example.fitbar.model.Message;
import com.example.fitbar.service.MailService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/info")
@CrossOrigin(origins = {"https://fitbar-wine.vercel.app/",
"http://localhost:8080"}) 
public class ContactController {

    @Autowired
    private MailService mailService;

    @PostMapping("/info")
    public ResponseEntity<String> handleMessage(@RequestBody Message messageObj) {
        String message = messageObj.getMessage();
        if (message == null || message.trim().isEmpty()) {
            return ResponseEntity.badRequest().body("Melding kan ikke være tom");
        }

        String subject = "Ny henvendelse via FitBar";
        String body = "Følgende melding ble sendt inn fra nettsiden:\n\n" + message;

        mailService.sendTo("sekoukosiah82@gmail.com", subject, body);
        mailService.sendTo("kosiah84@hotmail.com", subject, body);

        return ResponseEntity.ok("Melding sendt");
    }
}
