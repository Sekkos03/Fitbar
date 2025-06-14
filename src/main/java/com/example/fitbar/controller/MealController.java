// src/main/java/com/example/fitbar/controller/MealController.java
package com.example.fitbar.controller;

import com.example.fitbar.model.Meal;
import com.example.fitbar.service.MealService;

import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/meals")
@CrossOrigin(origins = "https://fitbar-wine.vercel.app/")  // adjust if your React runs elsewhere
public class MealController {

    private final MealService service;

    public MealController(MealService service) {
        this.service = service;
    }

    @GetMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public List<Meal> getMeals(
        @RequestParam(required = false) String category,
        @RequestParam(required = false) Double minPrice,
        @RequestParam(required = false) Double maxPrice
    ) {
        if (category != null && minPrice != null && maxPrice != null) {
            return service.findByCategoryAndPriceBetween(category, minPrice, maxPrice);
        } else if (category != null) {
            return service.findByCategory(category);
        } else if (minPrice != null && maxPrice != null) {
            return service.findByPriceBetween(minPrice, maxPrice);
        } else {
            return service.findAll();
        }
    }

    // GET /api/meals
    //@GetMapping
    //public List<Meal> getAll() {
//// }

    // GET /api/meals/{id}
    @GetMapping("/{id}")
    public ResponseEntity<Meal> getById(@PathVariable Long id) {
        return service.findById(id)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // POST /api/meals
    @PostMapping
    public ResponseEntity<Meal> create(@RequestBody Meal meal) {
        Meal saved = service.save(meal);
        return ResponseEntity.ok(saved);
    }

    // PUT /api/meals/{id}
    @PutMapping("/{id}")
    public ResponseEntity<Meal> update(
            @PathVariable Long id,
            @RequestBody Meal meal
    ) {
        return service.findById(id)
                .map(existing -> {
                    meal.setId(id);
                    return ResponseEntity.ok(service.save(meal));
                })
                .orElseGet(() -> ResponseEntity.notFound().build());
    }

    // DELETE /api/meals/{id}
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Long id) {
        if (service.findById(id).isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        service.deleteById(id);
        return ResponseEntity.noContent().build();
    }
}
