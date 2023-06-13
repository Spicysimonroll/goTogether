import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-showpage"
export default class extends Controller {
  static targets = ["location", "comment_section", "form", "comment"]

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
          this.comment_sectionTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
        window.scrollTo(0, document.body.scrollHeight);
      })
  }

  toggleComments(event) {
    if (event.currentTarget.innerHTML === 'Comments <i class="fa-solid fa-caret-down"></i>') {
      event.currentTarget.innerHTML = 'Comments <i class="fa-solid fa-caret-up"></i>'
    } else if (event.currentTarget.innerHTML === 'Comments <i class="fa-solid fa-caret-up"></i>') {
      event.currentTarget.innerHTML = 'Comments <i class="fa-solid fa-caret-down"></i>'
    }
    // console.log(this.commentTargets);
    this.commentTargets.forEach( (target) => {
      target.classList.toggle("d-none")
      // console.log(target);
    })
  }
}
