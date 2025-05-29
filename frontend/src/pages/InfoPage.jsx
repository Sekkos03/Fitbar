// InfoPage.jsx
import React from 'react';
import { Container, Row, Col, Form } from 'react-bootstrap';
import './InfoPage.css';

export default function InfoPage() {
  const openingHours = [
    ['Mandag',  '10:00 – 20:00'],
    ['Tirsdag', '10:00 – 20:00'],
    ['Onsdag',  '10:00 – 20:00'],
    ['Torsdag', '10:00 – 20:00'],
    ['Fredag',  '10:00 – 20:00'],
    ['Lørdag',  '12:00 – 17:00'],
    ['Søndag',  'Stengt'],
  ];

  return (
    <Container as="main" className="py-5 flex-grow-1">
      <div className="text-center mb-5">
        <h1 className="text-3xl font-semibold">Info</h1>
      </div>

      <Row className="mb-5 items-start">
        {/* Kart */}
        <Col md={6} className="mb-4 md:mb-0">
          <h2 className="text-xl underline mb-3">Hvor vi befinner oss</h2>
          <p className="mb-1"><strong>Adresse:</strong> Jens Wilhelmsens gate 7, 1671 Kråkerøy</p>
          <p className="mb-4"><strong>Telefon:</strong> +47 123 45 678</p>
          <div className="map-box">
            {/* Google Maps iframe for Jens Wilhelmsens gate 7 */}
            <iframe
              title="Kart over Jens Wilhelmsens gate 7"
              src="https://maps.google.com/maps?q=Jens%20Wilhelmsens%20gate%207%2C%201671%20Kråkerøy&z=15&output=embed"
              allowFullScreen
            ></iframe>
          </div>
        </Col>

        {/* Åpningstider */}
        <Col md={6} className="flex flex-col items-end">
          <h2 className="text-xl underline mb-3">Åpningstider</h2>
          <div className="opening-hours-box">
            <ul className="opening-hours-list">
              {openingHours.map(([day, time]) => (
                <li key={day} className="opening-hours-item">
                  <span className="opening-hours-day">{day}</span>
                  <span className="opening-hours-time">{time}</span>
                </li>
              ))}
            </ul>
          </div>
        </Col>
      </Row>

      {/* Kontaktfelt */}
      <div className="text-center mb-4">
        <h2 className="text-xl underline">Henvend deg til oss</h2>
      </div>
      <Row className="justify-content-center mb-5">
        <Col md={8}>
          <Form>
            <Form.Group controlId="forslag">
              <Form.Control
                as="textarea"
                rows={5}
                placeholder="Skriv dine forslag eller spørsmål her…"
                className="contact-box"
              />
            </Form.Group>
          </Form>
        </Col>
      </Row>
    </Container>
  );
}
