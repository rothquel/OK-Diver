import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dive-sites-filters"
export default class extends Controller {
  static targets = ["form", "country", "city", "diveType", "level", "diveSites", "mapRefresh", "tags"]
  connect() {
    // console.log(`test value:${this.mapRefreshTarget}`);
  }

  update(event) {
    event.preventDefault()
    // console.log(`country: ${this.countryTarget.value}`)
    const url = `${this.formTarget.action}?country=${this.countryTarget.value}&city=${this.cityTarget.value}&dive_type=${this.diveTypeTarget.value}&level=${this.levelTarget.value}`

    fetch(url, {headers: {"Accept": "application/json"}})
      .then(response => response.json())
      .then((data) => {
        console.log(this.mapRefreshTarget);
        this.diveSitesTarget.innerHTML = data.dive_sites

        // Inject updated markers list into the map's DOM in place of the initial one
        this.mapRefreshTarget.dataset.mapMarkersValue = data.markers;

        // Dispatch an event that will trigger the map refresh in the map_controller.js
        this.dispatch('refreshMap', {
          target: this.mapRefreshTarget
        })
      })
    }


}
