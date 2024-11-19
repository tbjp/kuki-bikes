// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"
import flatpickr from "flatpickr";

document.addEventListener("turbo:load", () => {
  flatpickr(".datepicker", {
    enableTime: true, // Example option for time picker
    dateFormat: "Y-m-d H:i",
  });
});
