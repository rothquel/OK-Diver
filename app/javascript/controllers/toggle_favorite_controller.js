import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  static targets = ['item']
  connect() {
    console.log(this.element)
    console.log(this.itemTarget)
    console.log(document.querySelector("[name='csrf-token']").content);
  }

  update(event) {
    event.preventDefault()
    console.log("TODO: send request in AJAX")

    // Injecter l'id
    const diveSiteId = this.itemTarget.getAttribute("data-dive-site-id")

    console.log(diveSiteId);

    fetch(`/dive_sites/${diveSiteId}/toggle_favorite`, {
      method: "POST",
      headers: {
        "X-CSRF-Token": document.querySelector("[name='csrf-token']").content,
        "Accept": "application/json"
      },
      body: 'test'
    })
    .then((response) => console.log('diveSiteId'))
    .then((data) => {

      this.itemTarget.classList.toggle('fa-solid')

      this.itemTarget.classList.toggle('fa-light')

    })
  }
}
