// src/components/Footer.jsx
import { Container, Row, Col } from 'react-bootstrap';
import { FaInstagram, FaFacebook } from 'react-icons/fa';
import './Footer.css';

export default function Footer() {
  return (
    <footer className="bg-black text-white py-5 shadow-glow-top">
      <Container>
        <Row className="text-center align-items-start">

          {/* Center column */}
          <Col md={14}>
            <div className="d-flex justify-content-center align-items-center mb-2">
              <span className="h1 mb-2">Fitbar</span>
              <a href="https://www.instagram.com/fitbar_fredrikstad/" className="text-white me-0">
                <FaInstagram className="me-2" size={60} />
              </a>
            </div>

            <div className="small me-3">© Created by Sekou Kosiah</div>
          </Col>

        </Row>
      </Container>
    </footer>
  );
}
