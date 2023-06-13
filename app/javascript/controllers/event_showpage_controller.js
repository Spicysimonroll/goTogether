import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-showpage"
export default class extends Controller {
  static targets = ["location", "comment", "form"]

  connect() {
    console.log("event showpage controller connected!");
  }

  toggleMap(event) {
    this.locationTarget.classList.toggle("d-none");
    if (event.currentTarget.innerHTML === 'Map <i class="fa-solid fa-caret-down"></i>') {
      event.currentTarget.innerHTML = 'Map <i class="fa-solid fa-caret-up"></i>'
    } else if (event.currentTarget.innerHTML === 'Map <i class="fa-solid fa-caret-up"></i>') {
      event.currentTarget.innerHTML = 'Map <i class="fa-solid fa-caret-down"></i>'
    }
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
        window.scrollTo(0, document.body.scrollHeight);
      })
  }

  toggleComments(event) {
    // console.log(this.commentTarget);
    // console.log(event.currentTarget.innerHTML);
    if (event.currentTarget.innerHTML === 'Comments <i class="fa-solid fa-caret-down"></i>') {
      event.currentTarget.innerHTML = 'Comments <i class="fa-solid fa-caret-up"></i>'
    } else if (event.currentTarget.innerHTML === 'Comments <i class="fa-solid fa-caret-up"></i>') {
      event.currentTarget.innerHTML = 'Comments <i class="fa-solid fa-caret-down"></i>'
    }
  }
}
