import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dive-sites-filters"
export default class extends Controller {
  static targets = ["form", "country", "city", "diveType", "level", "diveSites"]

  // connect() {
  //   console.log(this.formTarget)
  //   console.log(this.inputTarget)
  //  }

  update(event) {
    event.preventDefault()
    console.log(`country: ${this.countryTarget.value}`)
    // console.log(`city: ${this.cityTarget.value}`)
    // console.log(`dive-type: ${this.diveTypeTarget.value}`)
    // console.log(`level: ${this.levelTarget.value}`)

    const url = `${this.formTarget.action}?country=${this.countryTarget.value}&city=''&dive_type=Reef+diving&level=''`

    fetch(url, {headers: {"Accept": "application/json"}})
      .then(response => response.json())
      .then((data) => {
        console.log(data);

        this.formTarget.outerHTML = data
      })
    }
}
