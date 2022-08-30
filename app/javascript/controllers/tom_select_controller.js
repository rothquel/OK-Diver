import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

// Connects to data-controller="tom-select"
export default class extends Controller {
  // static targets = ["form", "country", "city", "diveType", "level", "diveSites", "mapRefresh", "tags"]

  static values = { options: Object }

  connect() {
    // new TomSelect(
    //   this.element ,
    //   this.optionsValue
    //   );
    console.log('testing connexion');

    this.#initTomSelect();
    // this.#arrow();

  }

  #initTomSelect () {
    new TomSelect("#tags",{
      persist: false,
      createOnBlur: true,
      create: false
    });
  }

  // #arrow () {
  // new TomSelect("#tags",{
  //   create: false,
  //   sortField: {
  //     field: "text",
  //     direction: "asc"
  //   }
  // });
  // }
}
