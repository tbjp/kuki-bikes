import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      minDate: "today",
      dateFormat: "Y-m-d",
      // altInput: true,
      // altFormat: "D j M, Y"
      altInput: true,
      altFormat: "Y/m/d"
    })
  }
}
