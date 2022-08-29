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
    // event.stopPropagation()

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
    .then((response) => response.json())
    .then((data) => {
    console.log(data);
      this.itemTarget.classList.toggle('fa-solid')

      this.itemTarget.classList.toggle('fa-regular')
      // window.alert('xyz')
      if (data.toggle == 'favorite') {
        this.newDiv.innerHTML = `<div id="alert-popup" class="alert alert-info alert-dismissible fade show m-1" role="alert">
        <p>You have added the dive site successfully 🤿</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
        </div>`
      } else {
        this.newDiv.innerHTML = `<div id="alert-popup" class="alert alert-info alert-dismissible fade show m-1" role="alert">
        <p>You have removed this dive site from your wishlist.</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close">
        </button>
        </div>`
      }

      this.body.insertAdjacentElement('afterbegin', this.newDiv)
      const alertPopup = document.getElementById('alert-popup')

      setTimeout(function (){
        alertPopup.remove();
      }, 10000 )
    })
  }
}
