import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="filter-tasks"
export default class extends Controller {
  static targets = ["allTasks", "currentUser", "userPartner", "unassigned"]

  connect() {
    console.log("connected", this.element);
  }


  show(event) {
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

    // console.dir(event.currentTarget);
    // console.log(event.currentTarget.innerText);



  }
}

// element.classList.remove("d-none");
