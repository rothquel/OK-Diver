import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sign-up"
export default class extends Controller {
  static targets = ["inputs"]

  connect() {
  }

  toggleInputs(event) {
    this.inputsTarget.classList.remove("d-none")

  }
}
