import React, { useState } from 'react';
import { Container, Row, Col, Form, Button, Alert } from 'react-bootstrap';
import './InfoPage.css';
import './leaf.css';

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

  const [message, setMessage] = useState('');
  const [status, setStatus] = useState(null);

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const res = await fetch('http://localhost:8080/api/info', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ message })
      });

      if (res.ok) {
        setStatus('success');
        setMessage('');
      } else {
        setStatus('error');
      }
    } catch (err) {
      console.error(err);
      setStatus('error');
    }
  };

  return (
    <div className='infopage-container'>
      <div className="container-with-leaf-decor">
        <Container as="main" className="py-5 flex-grow-1">
          <div className="text-center mb-5">
            <h1 className="text-3xl font-semibold">Info</h1>
          </div>

          <Row className="mb-5 items-start">
            <Col md={6} className="mb-4 md:mb-0">
              <h2 className="text-xl underline mb-3">Hvor vi befinner oss</h2>
              <p className="mb-1"><strong>Adresse:</strong> Jens Wilhelmsens gate 7, 1671 Kråkerøy</p>
              <p className="mb-4"><strong>Telefon:</strong> +47 123 45 678</p>
              <div className="map-box">
                <iframe
                  title="Kart over Jens Wilhelmsens gate 7"
                  src="https://maps.google.com/maps?q=Jens%20Wilhelmsens%20gate%207%2C%201671%20Kråkerøy&z=15&output=embed"
                  allowFullScreen
                ></iframe>
              </div>
            </Col>

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

          <div className="text-center mb-4">
            <h2 className="text-xl underline">Henvend deg til oss</h2>
          </div>
          <Row className="justify-content-center mb-5">
            <Col md={8}>
              <Form onSubmit={handleSubmit}>
                <Form.Group controlId="forslag">
                  <Form.Control
                    as="textarea"
                    rows={5}
                    placeholder="Skriv dine forslag eller spørsmål her…"
                    className="contact-box"
                    value={message}
                    onChange={(e) => setMessage(e.target.value)}
                    required
                  />
                </Form.Group>
                <div className="text-end mt-3">
                  <Button variant="dark" type="submit">Send</Button>
                </div>
              </Form>
              {status === 'success' && <Alert variant="success" className="mt-3">Meldingen ble sendt!</Alert>}
              {status === 'error' && <Alert variant="danger" className="mt-3">Noe gikk galt. Prøv igjen.</Alert>}
            </Col>
          </Row>
        </Container>
      </div>
    </div>
  );
}
