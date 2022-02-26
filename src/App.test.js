import { render, screen } from '@testing-library/react';
import App from './App';
import React from "react";

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/Hi there its form the docker, its working now/);
  expect(linkElement).toBeInTheDOM;
});

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/Hi there its form the docker, its working now/);
  expect(linkElement).toBeInTheDOM;
});
