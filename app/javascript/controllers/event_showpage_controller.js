import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-showpage"
export default class extends Controller {
  static targets = ["location", "comment", "form"]

  connect() {
    console.log("event showpage controller connected!");
  }

  toggleMap() {
    this.locationTarget.classList.toggle("d-none");
  }

  sendComment(event) {
    event.preventDefault();

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
      .then(response => response.json())
      .then((data) => {
        if (data.inserted_item) {
          this.commentTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
      })
  }

}
