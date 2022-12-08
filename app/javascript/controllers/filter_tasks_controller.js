import { Controller } from "@hotwired/stimulus"
import { end } from "@popperjs/core";

// Connects to data-controller="filter-tasks"
export default class extends Controller {
  static targets = ["allTasks", "currentUser", "userPartner", "unassigned", "allTasksA", "currentUserA", "userPartnerA", "unassignedtask", "navButton", "allSwitch", "currentUserSwitch", "userPartnerSwitch", "unassignedSwitch"]

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
      this.allSwitchTarget.classList.remove("d-none");
      this.currentUserSwitchTarget.classList.add("d-none");
      this.userPartnerSwitchTarget.classList.add("d-none");
      this.unassignedSwitchTarget.classList.add("d-none");


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
      this.allSwitchTarget.classList.add("d-none");
      this.currentUserSwitchTarget.classList.remove("d-none");
      this.userPartnerSwitchTarget.classList.add("d-none");
      this.unassignedSwitchTarget.classList.add("d-none");
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
      this.allSwitchTarget.classList.add("d-none");
      this.currentUserSwitchTarget.classList.add("d-none");
      this.userPartnerSwitchTarget.classList.remove("d-none");
      this.unassignedSwitchTarget.classList.add("d-none");
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
      this.allSwitchTarget.classList.add("d-none");
      this.currentUserSwitchTarget.classList.add("d-none");
      this.userPartnerSwitchTarget.classList.add("d-none");
      this.unassignedSwitchTarget.classList.remove("d-none");
    }
  }

  doneUserPartner(event) {
    // console.log(event.currentTarget.value);
    if (event.currentTarget.checked == false) {
      this.userPartnerATarget.classList.add("d-none");
      this.userPartnerTarget.classList.remove("d-none");

    }
    else if (event.currentTarget.checked == true) {
      this.userPartnerTarget.classList.add("d-none");
      this.userPartnerATarget.classList.remove("d-none");
    }
  }

  doneUnassigned(event) {
     // console.log(event.currentTarget.value);
     if (event.currentTarget.checked == false) {
      this.unassignedtaskTarget.classList.add("d-none");
      this.unassignedTarget.classList.remove("d-none");
    }
    else if (event.currentTarget.checked == true) {
      this.unassignedTarget.classList.add("d-none");
      this.unassignedtaskTarget.classList.remove("d-none");
    }
  }

  doneCurrentUser(event) {
    // console.log(event.currentTarget.value);
    if (event.currentTarget.checked == false) {
      this.currentUserATarget.classList.add("d-none");
      this.currentUserTarget.classList.remove("d-none");

    }
    else if (event.currentTarget.checked == true) {
      this.currentUserTarget.classList.add("d-none");
      this.currentUserATarget.classList.remove("d-none");
    }
  }

  doneAll(event) {
    // console.log(event.currentTarget.value);
    if (event.currentTarget.checked == false) {
      this.allTasksATarget.classList.add("d-none");
      this.allTasksTarget.classList.remove("d-none");

    }
    else if (event.currentTarget.checked == true) {
      this.allTasksTarget.classList.add("d-none");
      this.allTasksATarget.classList.remove("d-none");
    }
  }



    // if (event.currentTarget.className == true) {
    // }
}
