import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="mark"
export default class extends Controller {
  static targets = ["submit", "form", "task"]
  connect() {
    console.log("hello")
  }

  check(event) {
    // this.formTarget.submit()
    console.log(event)
    // event.preventDefault()
    const url = this.formTarget.action
  fetch(url, {
    method: "PATCH",
    headers: { "Accept": "text/plain" },
    body: new FormData(this.formTarget)
  })
    .then(response => response.text())
    .then((data) => {
      this.taskTarget.outerHTML = data
    })
  }
}
