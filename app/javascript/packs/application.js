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


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initAutocomplete();
})

import "controllers"
// import "insert_pricing_in_bookings"

// Year Start
function yearStart () {
  const pricePerDayString = document.getElementById('price-per-day').innerText;
  const pricePerDay = parseInt(pricePerDayString);

  const input = this.value;
  const selectMonthStart = document.querySelector('#booking_start_date_2i').value;
  const selectDayStart = document.querySelector('#booking_start_date_3i').value;
  const startDate = new Date(`${input}-${selectMonthStart}-${selectDayStart}`)

  const selectYearEnd = document.querySelector('#booking_end_date_1i').value;
  const selectMonthEnd = document.querySelector('#booking_end_date_2i').value;
  const selectDayEnd = document.querySelector('#booking_end_date_3i').value;
  const endDate = new Date(`${selectYearEnd}-${selectMonthEnd}-${selectDayEnd}`);

  const difference = Math.round(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24).toFixed(1);

  const totalPrice = difference * pricePerDay;

  const displayPrice = document.querySelector('#price-total');

  if (totalPrice < 0) {
    displayPrice.innerHTML = `Total Price : `;
  } else {
    displayPrice.innerHTML = `Total Price : ${totalPrice}€`;
  }
};

document.querySelector('#booking_start_date_1i').addEventListener("change", yearStart);

// Month Start
document.querySelector('#booking_start_date_2i').addEventListener("change", function () {
  const pricePerDayString = document.getElementById('price-per-day').innerText;
  const pricePerDay = parseInt(pricePerDayString);

  const selectYearStart = document.querySelector('#booking_start_date_1i').value;
  const input = this.value;
  const selectDayStart = document.querySelector('#booking_start_date_3i').value;
  const startDate = new Date(`${selectYearStart}-${input}-${selectDayStart}`)

  const selectYearEnd = document.querySelector('#booking_end_date_1i').value;
  const selectMonthEnd = document.querySelector('#booking_end_date_2i').value;
  const selectDayEnd = document.querySelector('#booking_end_date_3i').value;
  const endDate = new Date(`${selectYearEnd}-${selectMonthEnd}-${selectDayEnd}`);

  const difference = Math.round(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24).toFixed(1);

  const totalPrice = difference * pricePerDay;

  const displayPrice = document.querySelector('#price-total');

  if (totalPrice < 0) {
    displayPrice.innerHTML = `Total Price : `;
  } else {
  displayPrice.innerHTML = `Total Price : ${totalPrice}€`;
  }
});

// Day Start
document.querySelector('#booking_start_date_3i').addEventListener("change", function () {
  const pricePerDayString = document.getElementById('price-per-day').innerText;
  const pricePerDay = parseInt(pricePerDayString);

  const selectYearStart = document.querySelector('#booking_start_date_1i').value;
  const selectMonthStart = document.querySelector('#booking_start_date_2i').value;
  const input = this.value;
  const startDate = new Date(`${selectYearStart}-${selectMonthStart}-${input}`)

  const selectYearEnd = document.querySelector('#booking_end_date_1i').value;
  const selectMonthEnd = document.querySelector('#booking_end_date_2i').value;
  const selectDayEnd = document.querySelector('#booking_end_date_3i').value;
  const endDate = new Date(`${selectYearEnd}-${selectMonthEnd}-${selectDayEnd}`);

  const difference = Math.round(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24).toFixed(1);

  const totalPrice = difference * pricePerDay;

  const displayPrice = document.querySelector('#price-total');
  if (totalPrice < 0) {
    displayPrice.innerHTML = `Total Price : `;
  } else {
    displayPrice.innerHTML = `Total Price : ${totalPrice}€`;
  }
});

// Year End
document.querySelector('#booking_end_date_1i').addEventListener("change", function () {
  const pricePerDayString = document.getElementById('price-per-day').innerText;
  const pricePerDay = parseInt(pricePerDayString);

  const selectYearStart = document.querySelector('#booking_start_date_1i').value;
  const selectMonthStart = document.querySelector('#booking_start_date_2i').value;
  const selectDayStart = document.querySelector('#booking_start_date_3i').value;
  const startDate = new Date(`${selectYearStart}-${selectMonthStart}-${selectDayStart}`)

  const input = this.value;
  const selectMonthEnd = document.querySelector('#booking_end_date_2i').value;
  const selectDayEnd = document.querySelector('#booking_end_date_3i').value;
  const endDate = new Date(`${input}-${selectMonthEnd}-${selectDayEnd}`);

  const difference = Math.round(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24).toFixed(1);

  const totalPrice = difference * pricePerDay;

  const displayPrice = document.querySelector('#price-total');
  if (difference < 0) {
    displayPrice.innerHTML = `Total Price : `;
  } else if (difference < 7) {
    displayPrice.innerHTML = `Total Price : ${totalPrice}€`;
  } else {
    displayPrice.innerHTML = `Total Price : ${totalPrice - (totalPrice * 0.1)}€`;
  }

  const displayStay = document.querySelector('#stay-day');
  if (difference < 0) {
    displayStay.innerHTML = `Number of days :`;
  } else {
    displayStay.innerHTML = `Number of days : ${difference}`;
  }

  const displayDiscount = document.querySelector('#discount-stay');
  if (difference < 7) {
    displayDiscount.innerHTML = `Discount for long stay : 0 €`;
  } else {
    displayDiscount.innerHTML = `Discount for long stay : ${(totalPrice * 0.1).toFixed(2)} €`;
  }
});

// Month End
document.querySelector('#booking_end_date_2i').addEventListener("change", function () {
  const pricePerDayString = document.getElementById('price-per-day').innerText;
  const pricePerDay = parseInt(pricePerDayString);

  const selectYearStart = document.querySelector('#booking_start_date_1i').value;
  const selectMonthStart = document.querySelector('#booking_start_date_2i').value;
  const selectDayStart = document.querySelector('#booking_start_date_3i').value;
  const startDate = new Date(`${selectYearStart}-${selectMonthStart}-${selectDayStart}`)

  const selectYearEnd = document.querySelector('#booking_end_date_1i').value;
  const input = this.value;
  const selectDayEnd = document.querySelector('#booking_end_date_3i').value;
  const endDate = new Date(`${selectYearEnd}-${input}-${selectDayEnd}`);

  const difference = Math.round(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24).toFixed(1);

  const totalPrice = difference * pricePerDay;

  const displayPrice = document.querySelector('#price-total');
  if (difference < 0) {
    displayPrice.innerHTML = `Total Price : `;
  } else if (difference < 7) {
    displayPrice.innerHTML = `Total Price : ${totalPrice}€`;
  } else {
    displayPrice.innerHTML = `Total Price : ${totalPrice - (totalPrice * 0.1)}€`;
  }

  const displayStay = document.querySelector('#stay-day');
  if (difference < 0) {
    displayStay.innerHTML = `Number of days :`;
  } else {
    displayStay.innerHTML = `Number of days : ${difference}`;
  }

  const displayDiscount = document.querySelector('#discount-stay');
  if (difference < 7) {
    displayDiscount.innerHTML = `Discount for long stay : 0 €`;
  } else {
    displayDiscount.innerHTML = `Discount for long stay : ${(totalPrice * 0.1).toFixed(2)} €`;
  }

});

// Day End
document.querySelector('#booking_end_date_3i').addEventListener("change", function () {
  const pricePerDayString = document.getElementById('price-per-day').innerText;
  const pricePerDay = parseInt(pricePerDayString).toFixed(2);

  const selectYearStart = document.querySelector('#booking_start_date_1i').value;
  const selectMonthStart = document.querySelector('#booking_start_date_2i').value;
  const selectDayStart = document.querySelector('#booking_start_date_3i').value;
  const startDate = new Date(`${selectYearStart}-${selectMonthStart}-${selectDayStart}`)

  const selectYearEnd = document.querySelector('#booking_end_date_1i').value;
  const selectMonthEnd = document.querySelector('#booking_end_date_2i').value;
  const input = this.value;
  const endDate = new Date(`${selectYearEnd}-${selectMonthEnd}-${input}`);

  const difference = Math.round(endDate.getTime() - startDate.getTime()) / (1000 * 60 * 60 * 24).toFixed(2);

  const totalPrice = difference * pricePerDay;

  const displayPrice = document.querySelector('#price-total');
  if (difference < 0) {
    displayPrice.innerHTML = `Total Price : `;
  } else if (difference < 7) {
    displayPrice.innerHTML = `Total Price : ${totalPrice}€`;
  } else {
    displayPrice.innerHTML = `Total Price : ${totalPrice - (totalPrice * 0.1)}€`;
  }

  const displayStay = document.querySelector('#stay-day');
  if (difference < 0) {
    displayStay.innerHTML = `Number of days :`;
  } else {
    displayStay.innerHTML = `Number of days : ${difference}`;
  }

  const displayDiscount = document.querySelector('#discount-stay');
  if (difference < 7) {
    displayDiscount.innerHTML = `Discount for long stay : 0 €`;
  } else {
    displayDiscount.innerHTML = `Discount for long stay : ${(totalPrice * 0.1).toFixed(2)} €`;
  }

});

// DayEnd + 1
