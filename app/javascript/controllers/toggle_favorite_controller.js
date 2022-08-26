import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-favorite"
export default class extends Controller {
  static targets = ['item']
  connect() {
    console.log(this.element)
    console.log(this.itemTarget)
  }

}


// // Dont do that
// var divesiteID = '<%# @dive_site.id %>'
// function toggleLikeButton(divesiteID, innerHTML) {
//   let likeButton = document.querySelector(`.like-icon[data-id='${divesiteID}']`)
//   likeButton.classList.toggle('red');
// }
// toggleLikeButton(divesiteID);

// Faire le process Stimulus :
// 1) connecter card controller stimulus (data controller)
// 2) Action sur l'icône (listen click)
// 3) l'action du controller sera le "toggle"
// 4) Déclarer une value de l'id du dive_site data dive_site.id value =
// 5) faire un fetch pour trigger la méthode toggle_favorite :
