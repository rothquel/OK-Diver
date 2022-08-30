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
    console.log("connected")
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/streets-v10"
    })

    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))

    this.map.on('click', (event) => {
      console.log(event)
      this.#clearMarkers()
      this.latitudeTarget.value = event.lngLat.lat
      this.longitudeTarget.value = event.lngLat.lng
      this.#addMarkerToMap(event)
      this.#addCountryToForm(event)
    });

    this.map.addControl(new mapboxgl.NavigationControl());

  }

  #addMarkerToMap(event) {
    new mapboxgl.Marker()
    .setLngLat([event.lngLat.lng, event.lngLat.lat])
    .addTo(this.map);
  }

  #clearMarkers() {
    document.querySelectorAll(".mapboxgl-marker").forEach(marker => marker.remove())
  }

  #addCountryToForm(event) {
    const URL = `https://api.mapbox.com/geocoding/v5/mapbox.places/${event.lngLat.lng},${event.lngLat.lat}.json?access_token=pk.eyJ1Ijoicm90aHF1ZWwiLCJhIjoiY2w2ejZkZXh5MDFiejN2bWo0eXk4cDZrMCJ9.82K3Y2McR4I0nev5P5_jtg`
    fetch(URL)
    .then(result => result.json())
    .then(data => console.log(data))
  }


}
