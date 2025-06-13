package com.example.fitbar.service;

import com.example.fitbar.model.Meal;
import com.example.fitbar.repo.MealRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class MealService {
    private final MealRepository repo;

    public MealService(MealRepository repo) {
        this.repo = repo;
    }

    public List<Meal> findAll() {
        return repo.findAll();
    }

    public List<Meal> findByCategory(String category) {
        return repo.findByCategory(category);
    }

    public List<Meal> findByPriceBetween(double min, double max) {
        return repo.findByPriceBetween(min, max);
    }

    public List<Meal> findByCategoryAndPriceBetween(String category, double min, double max) {
        return repo.findByCategoryAndPriceBetween(category, min, max);
    }

    public Optional<Meal> findById(Long id) {
        return repo.findById(id);
    }

    public Meal save(Meal meal) {
        return repo.save(meal);
    }

    public void deleteById(Long id) {
        repo.deleteById(id);
    }
}