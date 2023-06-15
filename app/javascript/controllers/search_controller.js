import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search"
export default class extends Controller {
  static targets = ["searchBar"]

  connect() {
    console.log("search controller connected!");
  }

  toggleSearch() {
    this.searchBarTarget.classList.toggle("d-none")
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }
}
