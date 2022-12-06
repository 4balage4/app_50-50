import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="cross-text"
export default class extends Controller {
  connect() {
    console.log("Hello from the other sideeeee");
  }
}
