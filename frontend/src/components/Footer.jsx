// src/components/Footer.jsx
import { Container, Row, Col } from 'react-bootstrap';
import { FaInstagram, FaFacebook } from 'react-icons/fa';

export default function Footer() {
  return (
    <footer className="bg-black text-white py-5">
      <Container>
        <Row className="text-center align-items-start">
          {/* Left column */}
          <Col md={4}>
            <p className="mb-1 fw-bold">Stephan Kovac</p>
            <p className="small mb-1">Daglig leder</p>
            <p className="small">Tlf: +47 455 10 294</p>
          </Col>

          {/* Center column */}
          <Col md={4}>
            <p className="mb-3">E-post: <a href="mailto:stephan@fitbar.no" className="text-white text-decoration-underline">stephan@fitbar.no</a></p>

            <div className="d-flex justify-content-center align-items-center mb-2">
              <a href="#" className="text-white me-3">
                <FaInstagram size={28} />
              </a>
              <span className="h4 mb-0">Fitbar</span>
              <a href="#" className="text-white ms-3">
                <FaFacebook size={28} />
              </a>
            </div>

            <div className="small">Created by Sekou Kosiah</div>
          </Col>

          {/* Right column */}
          <Col md={4}>
            <p className="mb-1 fw-bold">Josef Missoum</p>
            <p className="small mb-1">Salgsjef</p>
            <p className="small">Tlf: +47 929 70 458</p>
          </Col>
        </Row>
      </Container>
    </footer>
  );
}

