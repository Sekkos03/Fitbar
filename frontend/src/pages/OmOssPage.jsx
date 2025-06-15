// src/pages/OmOssPage.jsx
import React from 'react';
import { Container, Row, Col, Button } from 'react-bootstrap';
import './OmOssPage.css';
import FitbarLogo from '../assets/fitbar_logo.png';
import './leaf.css';

export default function OmOssPage() {
  return (
    <div className="omoss-page-wrapper">
      <div className="container-with-leaf-decor">
      <Container fluid className="omoss-page-container">
        <h1 className="omoss-title">Om oss</h1>
        <Row className="omoss-intro align-items-center">
          <Col md={6} className="omoss-image-col">
            <img src={FitbarLogo} alt="Fitbar logo" className="omoss-logo" />
          </Col>
          <Col md={6} className="omoss-text-col">
            <p className="omoss-lead">
              Fitbar ble startet med én klar visjon: å tilby næringsrike, smakfulle måltider for alle
              som ønsker optimal helse og energi i en travel hverdag.
            </p>
            <p>
              Vi kombinerer moderne ernæringsforskning med ferske, naturlige råvarer for å skape
              en meny som spenner fra frokost og salater til proteinshakes og velværeshots.
              Hver rett er nøye komponert for å gi deg riktig balanse av proteiner, karbohydrater og sunt
              fett — slik at du kan presterer ditt beste, uansett daglig utfordring.
            </p>
            <Button variant="dark" href="/meny" className="mt-3">
              Utforsk vår meny
            </Button>
          </Col>
        </Row>

        <Row className="omoss-story">
          <Col md={4} className="story-step">
            <h2>Vår historie</h2>
            <p>
              Det hele startet ved kjøkkenbordet, da grunnleggerne Stephan og Josef ønsket rask,
              sunn mat som smaker godt. Etter utallige eksperimenter ble første Fitbar åpnet,
              og responsen var overveldende.
            </p>
          </Col>
          <Col md={4} className="story-step">
            <h2>Våre verdier</h2>
            <p>
              Bærekraft, kvalitet og fellesskap er kjernen i alt vi gjør. Vi samarbeider med
              lokale leverandører, bruker miljøvennlig emballasje, og gir tilbake til samfunnet.
            </p>
          </Col>
          <Col md={4} className="story-step">
            <h2>Fremtidsvisjon</h2>
            <p>
              Vår ambisjon er å bli den ledende leverandøren av helsebevisste måltider i Norden.
              Vi utvikler kontinuerlig nye oppskrifter som gir mer smak og mer energi — hver dag.
            </p>
          </Col>
        </Row>
      </Container>
    </div>
    </div>
  );
}
