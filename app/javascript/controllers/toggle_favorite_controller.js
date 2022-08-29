import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  static targets = ['item']
  connect() {
    console.log(this.element)
    console.log(this.itemTarget)
    console.log(document.querySelector("[name='csrf-token']").content);
    this.body = document.querySelector('body');
    this.newDiv = document.createElement('div');
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
    .then(() => {

      this.itemTarget.classList.toggle('fa-solid')

      this.itemTarget.classList.toggle('fa-regular')
      // window.alert('xyz')
      if (condition) {
        this.newDiv.innerHTML = `<div class="alert alert-info alert-dismissible fade show m-1" role="alert">
        <p> testing test</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
        </div>`
      } else {
        this.newDiv.innerHTML = `<div class="alert alert-info alert-dismissible fade show m-1" role="alert">
        <p> testing test</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
        </div>`
      }

      this.body.insertAdjacentElement('afterbegin', this.newDiv)
    })
  }
}
