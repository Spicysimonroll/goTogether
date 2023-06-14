// app/javascript/controllers/flatpickr_controller.js
import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "dates" ]

  connect() {
    flatpickr(this.datesTarget, {
      mode: "range"
    })
  }
}
