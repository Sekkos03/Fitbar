package com.example.fitbar.repo;

import org.springframework.stereotype.Repository;

import com.example.fitbar.model.Message;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface MessageRepository extends JpaRepository<Message, Integer> {
    
}
