// src/App.jsx
import React from 'react';
import { BrowserRouter, Routes, Route } from 'react-router-dom';
import Navbar    from './components/Navbar';
import Footer    from './components/Footer';
import HomePage  from './pages/HomePage';
import MenuPage  from './pages/MenuPage';
import InfoPage  from './pages/InfoPage';
import OmOssPage from './pages/OmOssPage';

export default function App() {
  return (
    <BrowserRouter>
      <div className="d-flex flex-column min-vh-100">
        <Navbar />

        <Routes>
          <Route path="/"       element={<HomePage />} />
          <Route path="/meny"   element={<MenuPage />} />
          <Route path="/info"   element={<InfoPage />} />
+         <Route path="/omoss"  element={<OmOssPage />} />
        </Routes>

        <Footer />
      </div>
    </BrowserRouter>
  );
}
