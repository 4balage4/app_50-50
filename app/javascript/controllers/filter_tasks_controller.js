import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="filter-tasks"
export default class extends Controller {
  static targets = ["allTasks", "currentUser", "userPartner", "unassigned", "navButton"]

  // connect() {
  //   console.log("connected", this.element);
  // }


  show(event) {
    this.navButtonTargets.forEach((button) => {
      button.classList.remove("btn-active")
    })
    event.currentTarget.parentElement.classList.add("btn-active")
    
    if (event.currentTarget.className == "all") {
      this.allTasksTarget.classList.remove("d-none");  // all tasks
      this.currentUserTarget.classList.add("d-none");
      this.userPartnerTarget.classList.add("d-none");
      this.unassignedTarget.classList.add("d-none");
    }
    else if (event.currentTarget.className == "user") {
      this.currentUserTarget.classList.remove("d-none"); // current user tasks
      this.allTasksTarget.classList.add("d-none");
      this.userPartnerTarget.classList.add("d-none");
      this.unassignedTarget.classList.add("d-none");
    }
    else if (event.currentTarget.className == "partner") {
      this.userPartnerTarget.classList.remove("d-none");
      this.currentUserTarget.classList.add("d-none");
      this.allTasksTarget.classList.add("d-none");
      this.unassignedTarget.classList.add("d-none");
    }
    else if (event.currentTarget.className == "open") {
      this.unassignedTarget.classList.remove("d-none"); // unassigned tasks
      this.currentUserTarget.classList.add("d-none");
      this.allTasksTarget.classList.add("d-none");
      this.userPartnerTarget.classList.add("d-none");
    }
  }
}
