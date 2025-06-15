// src/pages/HomePage.jsx
import { useState, useEffect } from 'react';
import { Container }       from 'react-bootstrap';
import './HomePage.css';
import Hero     from '../components/Hero';
import Features from '../components/Features';
import './leaf.css';


export default function HomePage() {
  const [meals, setMeals] = useState([]);
  const [cards, setCards] = useState([]);

  useEffect(() => {
    fetch(`${process.env.REACT_APP_API_URL}/api/meals`)
      .then(res => {
        if (!res.ok) throw new Error(res.statusText);
        return res.json();
      })
      .then(data => setMeals(data))
      .catch(console.error);
  }, []);

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
    <div className="home-page-container flex-grow-1 py-5">
     <div className="container-with-leaf-decor">
      <Container as="main">
        <div className="hero-section">
          <Hero />
        </div>
        <Features cards={cards} />
      </Container>
    </div>
    </div>
  );
}
