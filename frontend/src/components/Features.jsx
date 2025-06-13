// src/components/Features.jsx
import { Row, Col, Card as BSCard } from 'react-bootstrap';
import './Features.css';

export default function Features({ cards }) {
  const staticContent = [
    {
      title: 'Balanserte måltider.',
      desc:  'Nøye laget med fullkorn, magre proteiner og ferske råvarer.'
    },
    {
      title: 'Næringsdetaljer.',
      desc:  'Se kalorier, protein, fett og karbohydrater for hvert element på menyen.'
    },
    {
      title: 'Skreddersydd valg.',
      desc:  'Velg måltider som matcher dine ernærings- og smaksmål.'
    }
  ];

 return (
    <Row className="justify-content-center gy-5">
      {cards.map((meal, idx) => (
        <Col key={meal.id} md={4} className="d-flex flex-column align-items-center">
          <BSCard 
          key={meal.id}
            className="w-100 rounded-4 overflow-hidden shadow-lg transform transition-transform duration-300 hover:scale-105 fade-in"
            style={{ height: '22rem', animationFillMode: 'forwards' }}
          >
            <div className="features-card-img-wrapper">
              <img
                src={`http://localhost:8080${meal.imagePath}`}
                alt={staticContent[idx].title}
              />
            </div>
          </BSCard>

          <div className="mt-3 text-center px-2">
            <h3 className="fw-bold">{staticContent[idx].title}</h3>
            <p className="text-black">{staticContent[idx].desc}</p>

          </div>
        </Col>
      ))}
    </Row>
  );
}