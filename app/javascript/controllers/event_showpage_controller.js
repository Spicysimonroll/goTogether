import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-showpage"
export default class extends Controller {
  static targets = ["location"]

  connect() {
    console.log("event showpage controller connected!");
  }

  toggleMap() {
    this.locationTarget.classList.toggle("d-none")
  }
}
