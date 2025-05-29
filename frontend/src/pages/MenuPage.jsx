// src/pages/MenuPage.jsx
import { useState, useEffect } from 'react';
import {
  Container,
  Row,
  Col,
  Button,
  Card as BSCard,
  Modal,
  Form
} from 'react-bootstrap';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import './MenuPage.css';

export default function MenuPage() {
  const [meals, setMeals]                   = useState([]);
  const [showFilter, setShowFilter]         = useState(false);
  const [filterCategory, setFilterCategory] = useState('');
  const [minPrice, setMinPrice]             = useState('');
  const [maxPrice, setMaxPrice]             = useState('');
  const [showDetail, setShowDetail]         = useState(false);
  const [activeMeal, setActiveMeal]         = useState(null);

    // Scroll‐to‐top helper
  const scrollToTop = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };


  // Hent alle måltider
  useEffect(() => {
    fetch('http://localhost:8080/api/meals')
      .then(res => res.json())
      .then(setMeals)
      .catch(console.error);
  }, []);

  // Kategorier
  const categories = [
    'Breakfast/Lunch',
    'Salt Bowls',
    'Wraps',
    'Rice Bowls',
    'Protein Shakes',
    'Wellness Shots'
  ];

  // Filtrér på kategori og pris
  const filteredMeals = meals
    .filter(m => !filterCategory || m.category === filterCategory)
    .filter(m => !minPrice       || m.price >= +minPrice)
    .filter(m => !maxPrice       || m.price <= +maxPrice);

  // Gruppér etter kategori
  const mealsByCat = categories.map(cat => ({
    category: cat,
    items: filteredMeals.filter(m => m.category === cat)
  }));

  // Åpne/Lukke detalj‐modal
  const openDetail = meal => {
    setActiveMeal(meal);
    setShowDetail(true);
  };
  const closeDetail = () => setShowDetail(false);

  // Lukk filter‐modal
  const applyFilter = () => setShowFilter(false);

  // Tilbakestill filter‐valg
  const resetFilter = () => {
    setFilterCategory('');
    setMinPrice('');
    setMaxPrice('');
  };

  return (
    <div className="d-flex flex-column min-vh-100">

      <Container as="main" className="py-5 flex-grow position-relative">
        <h1 className="text-3xl font-semibold text-center mb-5">Meny</h1>

        {/* Filtrer-knapp */}
        <Button
          variant="dark"
          className="rounded-pill position-absolute"
          style={{ top: '9.3rem', right: '1.5rem' }}
          onClick={() => setShowFilter(true)}
        >
          Filtrer
        </Button>

        {/* Vis kun kategorier med items */}
        {mealsByCat
          .filter(({ items }) => items.length > 0)
          .map(({ category, items }) => (
            <section key={category} className="mb-5">
              <h2 className="h8 mb-3">{category}</h2>
              <Row className="gy-4">
                {items.map(meal => (
                  <Col key={meal.id} md={4} className="d-flex">
                    <BSCard
                      onClick={() => openDetail(meal)}
                      className="w-100 rounded-4 overflow-hidden shadow-sm hover-scale"
                      style={{ height: '24rem' }}
                    >
                      <div className="menu-card-img-wrapper">
                        <img
                          src={`http://localhost:8080${meal.imagePath}`}
                          alt={meal.name}
                          className="w-100 h-100"
                        />
                      </div>
                      <BSCard.Body className="h-1/3">
                        <BSCard.Title>
                          {meal.name} {meal.price} ,-
                        </BSCard.Title>
                        <BSCard.Text className="text-muted small">
                          {meal.description}
                        </BSCard.Text>
                      </BSCard.Body>
                    </BSCard>
                  </Col>
                ))}
              </Row>
            </section>
          ))
        }

        <div className="text-center mt-auto mb-4">
          <Button
            variant="outline-dark"
            className="rounded-pill"
            onClick={scrollToTop}
          >
            Tilbake ↑
          </Button>
        </div>
      </Container>
      {/* Filtrer‐Modal */}
      <Modal show={showFilter} onHide={() => setShowFilter(false)} centered>
        <Modal.Header closeButton>
          <Modal.Title>Filtrer</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <Row>
            <Col xs={6} className="border-end pe-4">
              <h6>Kategori</h6>
              {categories.map(cat => (
                <Button
                  key={cat}
                  variant={filterCategory === cat ? 'dark' : 'outline-dark'}
                  className="rounded-pill mb-2 w-100 text-start"
                  onClick={() => setFilterCategory(cat)}
                >
                  {cat}
                </Button>
              ))}
              <Button
                variant="outline-secondary"
                className="rounded-pill w-100 text-start mt-2"
                onClick={() => setFilterCategory('')}
              >
                Alle kategorier
              </Button>
            </Col>

            <Col xs={6} className="ps-4">
              <h6>Pris</h6>
              <Form.Group className="mb-3">
                <Form.Label>Min pris</Form.Label>
                <Form.Control
                  type="number"
                  min="0"
                  placeholder="Min pris"
                  value={minPrice}
                  onChange={e => setMinPrice(e.target.value)}
                />
              </Form.Group>
              <Form.Group>
                <Form.Label>Maks pris</Form.Label>
                <Form.Control
                  type="number"
                  min="0"
                  placeholder="Maks pris"
                  value={maxPrice}
                  onChange={e => setMaxPrice(e.target.value)}
                />
              </Form.Group>
            </Col>
          </Row>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="dark" onClick={resetFilter}>
            Tilbakestill
          </Button>
          <Button variant="dark" onClick={() => setShowFilter(false)}>
            Avbryt
          </Button>
          <Button variant="dark" onClick={applyFilter}>
            Bruk
          </Button>
        </Modal.Footer>
      </Modal>

      {/* Detalj‐Modal */}
      {activeMeal && (
        <Modal show={showDetail} onHide={closeDetail} centered size="lg">
          <Modal.Header closeButton>
            <Modal.Title>
              {activeMeal.name} {activeMeal.price} ,-
            </Modal.Title>
          </Modal.Header>
          <Modal.Body>
            <div className="modal-img-wrapper mb-4">
              <img
                src={`http://localhost:8080${activeMeal.imagePath}`}
                alt={activeMeal.name}
                className="w-100"
              />
            </div>
            <p>{activeMeal.description}</p>
            <p>
              <strong>Næringsstoffer:</strong>{' '}
              {activeMeal.nutritionInfo || 'Ikke oppgitt'}
            </p>
            <p>
              <strong>Allergi:</strong> {activeMeal.allergies || 'Ingen registrerte'}
            </p>
          </Modal.Body>
          <Modal.Footer>
            <Button variant="secondary" onClick={closeDetail}>
              Lukk
            </Button>
          </Modal.Footer>
        </Modal>
      )}
    </div>
  );
}
