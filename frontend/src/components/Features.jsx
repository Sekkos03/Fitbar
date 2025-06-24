// src/components/Features.jsx
import { Row, Col, Card as BSCard } from 'react-bootstrap';
import './Features.css';
import ResizedImage from '../components/ResizedImage';

const LOCAL_API = 'http://localhost:8080';
const PROD_API  = 'https://fitbar.onrender.com';
const API_BASE  = window.location.hostname === 'localhost' ? LOCAL_API : PROD_API;

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
            style={{ height: '21.7rem', animationFillMode: 'forwards' }}
          >
            <div className="features-card-img-wrapper">
              <ResizedImage
         src={`${API_BASE}${meal.imagePath}`}
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