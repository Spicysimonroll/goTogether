import { Controller } from "stimulus";

export default class extends Controller {
  submitComment(event) {
    event.preventDefault();
    const form = event.target;
    const formData = new FormData(form);

    fetch(form.action, {
      method: form.method,
      body: formData,
      headers: {
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content,
        "Accept": "application/json",
      },
    })
      .then(response => response.json())
      .then(data => {
        // Handle successful comment submission
        form.reset();
      })
      .catch(error => {
        console.error("Error:", error);
      });
  }
}
