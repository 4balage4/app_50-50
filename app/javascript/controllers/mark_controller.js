import { Controller } from "@hotwired/stimulus"
import { popper } from "@popperjs/core"


// Connects to data-controller="mark"
export default class extends Controller {
  static targets = ["submit", "form", "task"]

  check(event) {
    // this.formTarget.submit()
    // console.log(event)

    // event.preventDefault()
    const url = this.formTarget.action
  fetch(url, {
    method: "PATCH",
    headers: { "Accept": "text/plain" },
    body: new FormData(this.formTarget)
  })
    .then(response => response.text())
    .then((data) => {
      // this.popTarget.classList.remove("d-none")
      this.taskTarget.outerHTML = data
      // setTimeout(3)
      // this.popTarget.classList.add("d-none")
    })
  }
}
