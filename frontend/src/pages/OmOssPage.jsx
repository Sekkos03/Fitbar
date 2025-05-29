// src/pages/OmOssPage.jsx
import React from 'react';
import { Container, Row, Col } from 'react-bootstrap';

export default function OmOssPage() {
  return (
    <Container as="main" className="py-5 flex-grow-1">
      {/* Tittel */}
      <h1 className="text-3xl font-semibold text-center mb-5">Om oss</h1>

      {/* To grunnleggere */}
      <Row className="justify-content-center mb-5">
        {[
          { name: 'Stephan Kovac' },
          { name: 'Josef Missoum' }
        ].map((person, idx) => (
          <Col key={idx} md={4} className="d-flex flex-column align-items-center mb-4">
            <div
              className="
                bg-black 
                rounded-2xl 
                h-64 
                w-full 
                group 
                transform 
                transition-transform 
                duration-300 
                hover:scale-105
              "
            />
            <p className="mt-3 text-lg">{person.name}</p>
          </Col>
        ))}
      </Row>

   {/* Hva er Fitbar? */}
<h2 className="text-xl text-center underline mb-4">Hva er Fitbar?</h2>

<div
  className="
    rounded-2xl 
    group 
    transform 
    transition-transform 
    duration-300 
    hover:scale-105 
    overflow-hidden
    mx-auto 
    max-w-3xl
  "
>
  <div className="p-6 bg-white">
    <p className="text-gray-800 whitespace-pre-line leading-relaxed">
      {`Fitbar er en moderne restaurantkjede som tilbyr næringsrike, proteinrike måltider og drikker laget av ferske råvarer.\n\nVi kombinerer smak, helse og bekvemmelighet for alle livsstiler.\n\nVår meny inkluderer alt fra balanserte frokost- og lunsjalternativer, til salatbowls, wraps, risretter, proteinshakes og velværeshots — alt nøye komponert for optimal ernæring.`}
    </p>
  </div>
</div>

    </Container>
  );
}
