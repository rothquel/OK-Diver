import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["waterTemp", "sliderStartTemp"]
  connect() {
    this.waterTempTarget.innerHTML = `${this.sliderStartTempTarget.value}°c`
  }

  update(event) {
   this.waterTempTarget.innerHTML = `${event.target.value}°c`
  }


}
