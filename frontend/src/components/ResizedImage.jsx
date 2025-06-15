// src/components/ResizedImage.jsx
import React from 'react';

export default function ResizedImage({
  src,
  alt,
  width = 600,
  height = 600,
  style,
  ...props
}) {
  return (
    <img
      src={src}
      alt={alt}
      width={width}
      height={height}
      style={{ objectFit: 'cover', ...style }}
      {...props}
    />
  );
}
