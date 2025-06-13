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

  // 1) HENT ALLE MÅLTIDER FRA BACKEND
  useEffect(() => {
    fetch(`${process.env.REACT_APP_API_URL}/api/meals`)
      .then(res => res.json())
      .then(setMeals)
      .catch(console.error);
  }, []);

  // 2) DYNAMISK GENERERING AV KATEGORIER BARE BASERT PÅ MEALS
  //    – Tar alle måltidenes kategori‐felt, legger dem i et Set for å fjerne duplikater,
  //      og lager en array igjen. Hvis du vil sortere kategoriene alfabetisk kan du legge til `.sort()`.
  const categories = Array.from(
    new Set(meals.map(m => m.category))
  ).sort();

  // 3) FILTRERING PÅ VALGT KATEGORI OG PRIS (samme som før)
  const filteredMeals = meals
    .filter(m => !filterCategory || m.category === filterCategory)
    .filter(m => !minPrice       || m.price >= +minPrice)
    .filter(m => !maxPrice       || m.price <= +maxPrice);

  // 4) GRUPPER MÅLTIDER ETTER KATEGORI‐NAVNET
  //    – Nå bruker vi den dynamiske `categories`-listen.
  const mealsByCat = categories.map(cat => ({
    category: cat,
    items: filteredMeals.filter(m => m.category === cat)
  }));

  // 5) ÅPNE/LUKKE DETALJ‐MODAL
  const openDetail = meal => {
    setActiveMeal(meal);
    setShowDetail(true);
  };
  const closeDetail = () => setShowDetail(false);

  // 6) LUKK FILTER‐MODAL
  const applyFilter = () => setShowFilter(false);

  // 7) TILBAKESTILL FILTRERING (kategori + pris)
  const resetFilter = () => {
    setFilterCategory('');
    setMinPrice('');
    setMaxPrice('');
  };

  return (
    <div className="menu-page d-flex flex-column min-vh-100">
      <Container as="main" className="py-5 flex-grow position-relative">
        <h1 className="text-3xl font-semibold text-center mb-5 text-black">Meny</h1>

        {/* Filtrer‐knapp */}
        <Button
  variant="dark"
  className="rounded-pill position-absolute filter-btn"
  style={{ top: '9.3rem', right: '1.5rem' }}
  onClick={() => setShowFilter(true)}
>
  Filtrer
</Button>


        {/* Vis kun de kategoriene som faktisk har items (items.length > 0) */}
        {mealsByCat
          .filter(({ items }) => items.length > 0)
          .map(({ category, items }) => (
            <section key={category} className="mb-5">
              <h2 className="category-title h8 mb-3">{category}</h2>
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
                          src={`${process.env.REACT_APP_API_URL}${meal.imagePath}`}
                          alt={meal.name}
                          className="w-100 h-100"
                        />
                      </div>
                      <BSCard.Body className="h-1/3">
                        <BSCard.Title className="text-black">
                          {meal.name} {meal.price} ,-
                        </BSCard.Title>
                        <BSCard.Text className="text-black small">
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
  className="rounded-pill back-to-top"
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
              {/*
                Her viser vi alle kategoriene dynamisk – 
                filterCategory === cat sørger for at valgt kategori blir markert.
              */}
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

      {/* Detalj‐Modal (samme som før) */}
      {activeMeal && (
        <Modal show={showDetail} onHide={closeDetail} centered size="lg">
          <Modal.Header closeButton>
            <Modal.Title className="text-black">
              {activeMeal.name} {activeMeal.price} ,-
            </Modal.Title>
          </Modal.Header>
          <Modal.Body className="bg-white text-black">
            <div className="modal-img-wrapper mb-4">
              <img
                src={`${process.env.REACT_APP_API_URL}${activeMeal.imagePath}`}
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
