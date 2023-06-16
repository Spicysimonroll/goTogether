import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    console.log("typed-js controller connected");
    console.log(this.element);
    new Typed(this.element, {
      strings: ['Share, ^500 enjoy, ^500 feel alive ^2500 '],
      typeSpeed: 50,
      loop: true
    });
  }
}
