package com.example.fitbar.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.fitbar.model.Message;

public interface MessageRepository extends JpaRepository<Message, Long> {
}
