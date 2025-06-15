// src/components/Navbar.jsx
import React, { useState } from 'react';
import './Navbar.css';  // ← import the CSS
import { Navbar as BSNavbar, Nav, Button, Container, Modal } from 'react-bootstrap';
import { NavLink } from 'react-router-dom';
import logo from '../assets/fitbar_logo.png';

const links = [
  { label: 'Forsiden', to: '/' },
  { label: 'Meny',     to: '/meny' },
  { label: 'Info',     to: '/info' },
  { label: 'Om oss',   to: '/omoss' },
];

export default function Navbar() {
  const [showContact, setShowContact] = useState(false);
  const open = () => setShowContact(true);
  const close = () => setShowContact(false);

  return (
    <>
      <BSNavbar bg="white" expand="md" sticky="top" className="px-3 shadow-sm">
        <Container>
         {/* Logo i stedet for tekst */}
          <BSNavbar.Brand>
            <img src={logo} alt="Fitbar" className="navbar-logo" />
          </BSNavbar.Brand>
          <BSNavbar.Toggle />
          <BSNavbar.Collapse className="justify-content-center">
            <Nav className="mx-auto">
              {links.map(({ label, to }) => (
                <Nav.Link
                  as={NavLink}
                  to={to}
                  key={to}
                  className="border border-dark text-dark me-2 rounded-pill nav-btn"
                >
                  {label}
                </Nav.Link>
              ))}
            </Nav>
            <Button
              variant="outline-dark"
              className="rounded-pill nav-btn"
              onClick={open}
            >
              Kontakt
            </Button>
          </BSNavbar.Collapse>
        </Container>
      </BSNavbar>

      {/* Kontakt-modal */}
      <Modal show={showContact} onHide={close} centered>
        <Modal.Header closeButton>
          <Modal.Title className="text-center w-100">Kontakt oss ved</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <div className="contact-content">
            <div className="contact-info">
              <p><strong>E-Mail</strong><br/>fitbar@vaerste.no</p>
              <p><strong>Telefon</strong><br/>123456789</p>
              <p><strong>Sosiale medier</strong><br/>
                Instagram: fitbar_fredrikstad<br/>
              </p>
            </div>
             {/* Logo i stedet for sirkel */}
              <div className="contact-circle">
                <img 
                  src={logo} 
                  alt="Fitbar logo" 
                  className="contact-logo" 
                />
              </div>
          </div>
        </Modal.Body>
        <Modal.Footer>
          <Button variant="dark" onClick={close}>Lukk</Button>
        </Modal.Footer>
      </Modal>
    </>
  );
}
