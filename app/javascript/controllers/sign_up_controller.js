import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sign-up"
export default class extends Controller {
  static targets = ["inputs"]

  connect() {
  }

  toggleInputs(event) {
    if (event.target.checked) {
      this.inputsTarget.classList.remove("d-none")
    } else {
      this.inputsTarget.classList.add("d-none")
    }
  }
}
