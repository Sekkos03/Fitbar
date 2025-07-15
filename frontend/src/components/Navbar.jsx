// src/components/Navbar.jsx
import React, { useState } from 'react';
import './Navbar.css';
import { Navbar as BSNavbar, Nav, Button, Container, Modal } from 'react-bootstrap';
import { NavLink } from 'react-router-dom';
import logo from '../assets/fitbar_logo.png';
import foodoraLogo from '../assets/Foodora_Logo.png';
import favritLogo  from '../assets/Favrit_Logo.png';
import woltLogo    from '../assets/Wolt_Logo.png';

const links = [
  { label: 'Forsiden', to: '/' },
  { label: 'Meny',     to: '/meny' },
  { label: 'Info',     to: '/info' },
  { label: 'Om oss',   to: '/omoss' },
];

export default function Navbar() {
  const [showContact, setShowContact] = useState(false);
  const [expanded, setExpanded] = useState(false);
  const open = () => setShowContact(true);
  const close = () => setShowContact(false);

  return (
    <>
      <BSNavbar
        expand="md"
        sticky="top"
        className="px-3 shadow-sm"
        expanded={expanded}
        onToggle={setExpanded}
      >
        <Container>
          <BSNavbar.Brand
            as={NavLink}
            to="/"
            onClick={() => setExpanded(false)}
          >
            <img src={logo} alt="Fitbar" className="navbar-logo" />
          </BSNavbar.Brand>

          <BSNavbar.Toggle aria-controls="navbar-nav" />
          <BSNavbar.Collapse id="navbar-nav" className="justify-content-center">
            <Nav className="mx-auto">
              {links.map(({ label, to }) => (
                <Nav.Link
                  as={NavLink}
                  to={to}
                  key={to}
                  className="border border-dark text-dark me-2 rounded-pill nav-btn"
                  onClick={() => setExpanded(false)}
                >
                  {label}
                </Nav.Link>
              ))}
            </Nav>
            <Button
              variant="outline-dark"
              className="rounded-pill nav-btn"
              onClick={() => {
                open();
                setExpanded(false);
              }}
            >
              Bestill nå
            </Button>
          </BSNavbar.Collapse>
        </Container>
      </BSNavbar>

      <Modal show={showContact} onHide={() => { close(); setExpanded(false); }} centered>
        <Modal.Header closeButton>
          <Modal.Title className="text-center w-100">Bestill nå</Modal.Title>
        </Modal.Header>
        <Modal.Body>
          <div className="order-content">
            <NavLink to="https://www.foodora.no/restaurant/wr3q/fitbar" className="order-circle">
              <img src={foodoraLogo} alt="Foodora" />
            </NavLink>
            <NavLink to="https://favrit.com/group/81251/LjBLNeZJR7A" className="order-circle">
              <img src={favritLogo} alt="Favrit" />
            </NavLink>
            <NavLink to="https://wolt.com/nb/nor/fredrikstad/restaurant/fitbar-fredrikstad?srsltid=AfmBOoqkjOEoFC2N5h_n7gjI7N0pjXYbv9q8kHKsfeCS9v1pk_FCvzbk" className="order-circle wolt-circle">
              <img src={woltLogo} alt="Wolt" />
            </NavLink>
          </div>
        </Modal.Body>
        <Modal.Footer>
          <Button
            variant="dark"
            onClick={() => { close(); setExpanded(false); }}
          >
            Lukk
          </Button>
        </Modal.Footer>
      </Modal>
    </>
  );
}
