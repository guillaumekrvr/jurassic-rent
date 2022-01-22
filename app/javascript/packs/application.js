// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';


Rails.start()
Turbolinks.start()
ActiveStorage.start()

import { updatePrice } from "../packs/insert_pricing_in_bookings.js";
// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Star Rating
import { starsRating } from '../plugins/insert_stars_in_bookings.js';
console.log(starsRating);

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
  if (document.getElementById('price-per-day') != null) {
    updatePrice();
    starsRating();
  }
})

import "controllers"
// import "insert_pricing_in_bookings"


// document.addEventListener("DOMContentLoaded", function () {

//   const reviewRating = document.querySelectorAll('.review-rating-number')[2].innerText;
//   const reviewRatingNum = parseInt(reviewRating);
//   const reviewRatingToWrite = document.querySelectorAll('.review-rating-number')[2];

//   if (reviewRatingNum > 0) {
//     reviewRatingToWrite.innerHTML = ` `;
//   } else if (reviewRatingNum = 1) {
//     reviewRatingToWrite.innerHTML = `🐊`;
//   } else if (reviewRatingNum = 2) {
//     reviewRatingToWrite.innerHTML = `🐊 🐊 🐊`;
//   } else if (reviewRatingNum = 3) {
//     reviewRatingToWrite.innerHTML = `🐊 🐊 🐊 🐊`;
//   } else if (reviewRatingNum = 4) {
//     reviewRatingToWrite.innerHTML = `🐊 🐊 🐊 🐊`;
//   } else {
//     reviewRatingToWrite.innerHTML = `🐊 🐊 🐊 🐊 🐊`;
//   }
// });
