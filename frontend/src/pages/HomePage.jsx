// src/pages/HomePage.jsx
import { useState, useEffect } from 'react';
import { Container }       from 'react-bootstrap';

import Hero     from '../components/Hero';
import Features from '../components/Features';

export default function HomePage() {
  const [meals, setMeals] = useState([]);
  const [cards, setCards] = useState([]);

  // Hent alle måltider
  useEffect(() => {
    fetch('http://localhost:8080/api/meals')
      .then(res => {
        if (!res.ok) throw new Error(res.statusText);
        return res.json();
      })
      .then(data => setMeals(data))
      .catch(console.error);
  }, []);

  // Velg 3 tilfeldige måltider og roter hvert 5 sek
  useEffect(() => {
    if (!meals.length) return;
    const pick = () => {
      const copy = [...meals].sort(() => 0.5 - Math.random());
      setCards(copy.slice(0, 3));
    };
    pick();
    const id = setInterval(pick, 5000);
    return () => clearInterval(id);
  }, [meals]);

  return (
    <Container as="main" className="flex-grow-1 py-5">
      <Hero />
      <Features cards={cards} />
    </Container>
  );
}
