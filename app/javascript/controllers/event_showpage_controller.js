import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="event-showpage"
export default class extends Controller {
  static targets = ["location", "commentSection", "form", "comment", "allComments"]

  connect() {
    console.log("event showpage controller connected!");
  }

  toggleMap(event) {
    this.locationTarget.classList.toggle("d-none");
    if (event.currentTarget.innerHTML === 'Map <i class="fa-solid fa-caret-down"></i>') {
      event.currentTarget.innerHTML = 'Map <i class="fa-solid fa-caret-up"></i>'
      window.scrollTo(0, this.locationTarget.scrollHeight)
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
          this.commentSectionTarget.insertAdjacentHTML("beforeend", data.inserted_item)
        }
        this.formTarget.outerHTML = data.form
        window.scrollTo(0, document.body.scrollHeight);
      })
  }

  toggleComments(event) {
    if (event.currentTarget.innerHTML === 'See less <i class="fa-solid fa-caret-up"></i>') {
      event.currentTarget.innerHTML = 'See more <i class="fa-solid fa-caret-down"></i>'
    } else if (event.currentTarget.innerHTML === 'See more <i class="fa-solid fa-caret-down"></i>') {
      event.currentTarget.innerHTML = 'See less <i class="fa-solid fa-caret-up"></i>'
    }
    // console.log(this.commentTargets);
    this.commentTargets.forEach( (target) => {
      target.classList.toggle("d-none")
      // console.log(target);
    })
  }
}
