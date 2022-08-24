import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="create-site-map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  static targets = ["map", "latitude", "longitude"]

  connect() {
    // console.log(this.apiKeyValue)
    console.log(this.latitudeTarget)
    console.log(this.longitudeTarget)
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))

    this.map.on('click', (event) => {
      console.log(event.lngLat)
      this.latitudeTarget.value = event.lngLat.lat
      this.longitudeTarget.value = event.lngLat.lng
    });

    this.#addMarkersToMap()
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


}
