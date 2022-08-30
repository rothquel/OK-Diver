import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "depth", "sliderStartDepth"]
  connect() {
    this.depthTarget.innerHTML = `${this.sliderStartDepthTarget.value} m`
  }

  updateDepth(event) {
    this.depthTarget.innerHTML = `${event.target.value}°c`
   }
}
