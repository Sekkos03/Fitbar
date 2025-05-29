// src/main/java/com/example/fitbar/repo/MealRepository.java
package com.example.fitbar.repo;

import com.example.fitbar.model.Meal;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MealRepository extends JpaRepository<Meal, Long> {
    List<Meal> findByCategory(String category);
    List<Meal> findByPriceBetween(double min, double max);
    List<Meal> findByCategoryAndPriceBetween(String category, double min, double max);
}
