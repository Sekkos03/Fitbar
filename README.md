# 🥗 Fitbar

Website and digital menu for Fitbar — a healthy meal bar in Fredrikstad

**Built with:** React 19 · React-Bootstrap 5 · Spring Boot 3 · Spring Data JPA · MySQL · Spring Mail

`React` `Spring Boot` `MySQL` `Docker`

[Overview](#-overview) • [Features](#-features) • [Architecture](#-architecture) • [Project structure](#️-project-structure) • [Quick start](#-quick-start) • [API reference](#-api-reference) • [Tech stack](#️-tech-stack)

## 📖 Overview

Fitbar is the public website for a real meal bar in Fredrikstad (Kråkerøy), built around a menu that's pulled live from a database rather than hardcoded into the page. Visitors can browse the full menu with category and price filters, read about the business, find opening hours and location, and send a message straight to the owners. Actual ordering happens through third-party delivery platforms (Foodora, Wolt, Favrit) linked from a "Bestill nå" (Order now) modal, rather than a built-in checkout.

## ✨ Features

- **Live menu** — meals are fetched from the backend (`GET /api/meals`) and grouped by category, with filtering by category and price range and a detail modal showing macros and allergens per dish
- **Rotating highlights** — the home page cycles through three randomly picked meals every few seconds as a teaser
- **Contact form** — the Info page's message form posts to the backend and is forwarded to the owners by email via Spring Mail
- **Delivery integration** — an order modal links out to the restaurant's listings on Foodora, Wolt and Favrit
- **Database-backed menu content** — meal data (name, category, price, description, allergies, image, nutrition info) lives in MySQL, with the schema and seed data loaded automatically on startup
- **Dockerized backend** — a multi-stage Maven build produces a runnable jar image, deployed on Render with the database hosted on Railway

## 🧱 Architecture

The React frontend (Create React App) is a static site that talks to a Spring Boot REST API for everything dynamic. `Meal` is the central entity, backed by `MealRepository` and served through `MealController`/`MealService`. The contact form works the same way on the message side: `MessageController` accepts a submission, `MessageService` and `MailService` take care of turning it into an email to the business. The frontend picks its API base URL at runtime — `localhost:8080` in development, the deployed Render URL in production.

## 🗂️ Project structure

```
Fitbar/
├── src/main/java/com/example/fitbar/
│   ├── config/            # Security and web configuration
│   ├── controller/         # MealController, MessageController
│   ├── model/               # Meal, Message
│   ├── repo/                # MealRepository, MessageRepository
│   └── service/             # MealService, MessageService, MailService
├── src/main/resources/
│   ├── application.properties
│   ├── schema.sql          # Table definitions, loaded on startup
│   └── data.sql            # Seed data
├── frontend/                 # React app (Create React App)
│   └── src/
│       ├── pages/            # HomePage, MenuPage, InfoPage, OmOssPage
│       └── components/       # Navbar, Footer, Hero, Features, ResizedImage
├── Dockerfile               # Multi-stage Maven build → runnable backend image
└── pom.xml
```

## 🚀 Quick start

Prerequisites: Java 17+, Maven, Node.js 18+, npm, a MySQL instance.

```bash
# Backend (http://localhost:8080)
mvn spring-boot:run

# Frontend (http://localhost:3000), in a separate terminal
cd frontend
npm install
npm start
```

Point `spring.datasource.url` in `application.properties` at your own MySQL instance for local development — the checked-in file currently points at the project's hosted Railway database, so it's worth moving the datasource and mail credentials out to environment variables before this repo goes anywhere public.

## 🔌 API reference

| Method | Endpoint | Description |
|---|---|---|
| GET | `/api/meals` | All meals, used by both the home page and the menu page |
| POST | `/api/info` | Submits the contact form; forwarded to the business by email |

## 🛠️ Tech stack

| Layer | Technology |
|---|---|
| Backend | Java 17, Spring Boot 3, Spring Web, Spring Data JPA, Spring Security |
| Email | Spring Mail (SMTP via Gmail) |
| Database | MySQL (hosted on Railway) |
| Frontend | React 19, React-Bootstrap 5, React Router 7 |
| Deployment | Docker, Render (backend), static hosting (frontend) |
