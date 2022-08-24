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
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))

    this.map.on('click', (event) => {
      this.latitudeTarget.value = event.lngLat.lat
      this.longitudeTarget.value = event.lngLat.lng
      this.#addMarkerToMap(event)
    });

  }

  #addMarkerToMap(event) {
    new mapboxgl.Marker()
    .setLngLat([event.lngLat.lng, event.lngLat.lat])
    .addTo(this.map);
  }





}
