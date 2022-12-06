import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="filter-tasks"
export default class extends Controller {
  static targets = ["allTasks", "currentUser", "userPartner", "unassigned", "allTasksA", "currentUserA", "userPartnerA", "unassignedtask", "navButton"]

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
      this.allTasksATarget.classList.remove("d-none");  // all tasks
      this.currentUserATarget.classList.add("d-none");
      this.userPartnerATarget.classList.add("d-none");
      this.unassignedtaskTarget.classList.add("d-none");
    }
    else if (event.currentTarget.className == "user") {
      this.currentUserTarget.classList.remove("d-none"); // current user tasks
      this.allTasksTarget.classList.add("d-none");
      this.userPartnerTarget.classList.add("d-none");
      this.unassignedTarget.classList.add("d-none");
      this.currentUserATarget.classList.remove("d-none"); // current user tasks
      this.allTasksATarget.classList.add("d-none");
      this.userPartnerATarget.classList.add("d-none");
      this.unassignedtaskTarget.classList.add("d-none");
    }
    else if (event.currentTarget.className == "partner") {
      this.userPartnerTarget.classList.remove("d-none");
      this.currentUserTarget.classList.add("d-none");
      this.allTasksTarget.classList.add("d-none");
      this.unassignedTarget.classList.add("d-none");
      this.userPartnerATarget.classList.remove("d-none");
      this.currentUserATarget.classList.add("d-none");
      this.allTasksATarget.classList.add("d-none");
      this.unassignedtaskTarget.classList.add("d-none");
    }
    else if (event.currentTarget.className == "open") {
      this.unassignedTarget.classList.remove("d-none"); // unassigned tasks
      this.currentUserTarget.classList.add("d-none");
      this.allTasksTarget.classList.add("d-none");
      this.userPartnerTarget.classList.add("d-none");
      this.unassignedtaskTarget.classList.remove("d-none"); // unassigned tasks
      this.currentUserATarget.classList.add("d-none");
      this.allTasksATarget.classList.add("d-none");
      this.userPartnerATarget.classList.add("d-none");
    }
  }
}
