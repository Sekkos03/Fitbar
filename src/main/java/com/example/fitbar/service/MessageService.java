package com.example.fitbar.service;
import org.springframework.stereotype.Service;

import com.example.fitbar.model.Message;
import com.example.fitbar.repo.MessageRepository;

import org.springframework.beans.factory.annotation.Autowired;

@Service
public class MessageService {

    @Autowired private MessageRepository repo;
    @Autowired private MailService mailService;

    public void processMessage(Message msg) {
        // 1) lagre i DB
        repo.save(msg);

        // 2) send e-post
        String subject = "Ny henvendelse fra Fitbar";
        String body = msg.getMessage();
        mailService.sendTo("josefmissoum@gmail.com", subject, body);
    }
}
