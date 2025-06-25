package com.example.fitbar.controller;

import org.springframework.web.bind.annotation.*;

import com.example.fitbar.model.Message;
import com.example.fitbar.service.MessageService;

import org.springframework.http.ResponseEntity;
import org.springframework.beans.factory.annotation.Autowired;

@RestController 
@CrossOrigin(origins = "http://localhost:3000")
@RequestMapping("/api/info")
public class MessageController {

    @Autowired private MessageService messageService;

    @PostMapping
    public ResponseEntity<String> handle(@RequestBody Message msg) {
        messageService.processMessage(msg);
        return ResponseEntity.ok("Takk for meldingen!");
    }

    @GetMapping
    public ResponseEntity<String> ping() {
        return ResponseEntity.ok("Message API er oppe");
    }
}
