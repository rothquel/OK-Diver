// app/javascript/controllers/map_controller.js
import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  static targets = ["marker"]

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.#addMarkersAndResizeMap()

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))
  }

  refreshMapAjax() {
    // Remove all markets from the map
    this.#clearMarkers()
    // Add the new markers and resize the map to fit them
    this.#addMarkersAndResizeMap()
  }

  #addMarkersAndResizeMap() {
    if (this.markersValue.length > 0) {
      this.#addMarkersToMap()
      this.#fitMapToMarkers()
    }
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window) // Add this
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup) // Add this
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #clearMarkers() {
    this.markersValue.length = 0
    this.markerTargets.forEach(marker => marker.remove())
  }
}
//
// app/javascript/controllers/map_controller.js
// import { Controller } from "@hotwired/stimulus"
// import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// export default class extends Controller {
//   static values = {
//     apiKey: String,
//     markers: Array
//   }

//   connect() {
//     mapboxgl.accessToken = this.apiKeyValue

//     this.map = new mapboxgl.Map({
//       container: this.element,
//       style: "mapbox://styles/mapbox/streets-v10"
//     })

//     this.#addMarkersToMap()
//     this.#fitMapToMarkers()

//     this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
//       mapboxgl: mapboxgl }))
//   }

//   #addMarkersToMap() {
//     this.markersValue.forEach((marker) => {
//       const popup = new mapboxgl.Popup().setHTML(marker.info_window) // Add this
//       new mapboxgl.Marker()
//         .setLngLat([ marker.lng, marker.lat ])
//         .setPopup(popup) // Add this
//         .addTo(this.map)
//     });
//   }

//   #fitMapToMarkers() {
//     const bounds = new mapboxgl.LngLatBounds()
//     this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
//     this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
//   }

//   #refreshMapAjax() {

//   }

// }
