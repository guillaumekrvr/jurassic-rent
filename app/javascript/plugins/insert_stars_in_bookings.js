export function starsRating() {
    const allRatings = document.querySelectorAll('.review-rating-number')
    allRatings.forEach(reviewRating => {
      const reviewRatingToSave = reviewRating.innerText;
      const reviewRatingNum = parseInt(reviewRatingToSave);
      console.log(reviewRatingNum);

      if (reviewRatingNum < 1) {
        reviewRating.innerHTML = ``;
      } else if (reviewRatingNum < 2) {
        reviewRating.innerHTML = `🐊`;
      } else if (reviewRatingNum < 3) {
        reviewRating.innerHTML = `🐊 🐊 🐊`;
      } else if (reviewRatingNum < 4) {
        reviewRating.innerHTML = `🐊 🐊 🐊 🐊`;
      } else if (reviewRatingNum < 5) {
        reviewRating.innerHTML = `🐊 🐊 🐊 🐊`;
      } else {
        reviewRating.innerHTML = `🐊 🐊 🐊 🐊 🐊`;
      }
    });
}
