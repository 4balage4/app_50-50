import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="mark"
export default class extends Controller {
  connect() {
    console.log("hello")
  }
}
