import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-form"
export default class extends Controller {

  static targets = ["showGroups"]

  connect() {
  }

  showHide(event) {
    if (event.currentTarget.checked === true) {
      this.showGroupsTarget.style.display = "block"
    } else {
      this.showGroupsTarget.style.display = "none"
    }
  }
}
