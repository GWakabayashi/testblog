import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  initialize() {}
  connect() {}
  toggleForm(event) {
    console.log("I clicked this edit button");
    event.preventDefault();
    event.stopPropagation();
    const formID = event.params["form"];
    const commentContentID = event.params["content"];
    const editButtonId = event.params["edit"];

    const form = document.getElementById(formID);
    const commentContent = document.getElementById(commentContentID);
    const editButton = document.getElementById(editButtonId);

    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    commentContent.classList.toggle("d-none");
    this.toggleEditButton(editButton);
  }

  toggleEditButton(editButton) {
    if (editButton.innerText === "Edit") {
      editButton.innerText = "Cancel";
      this.toggleEditButtonClass(editButton);
    } else {
      editButton.innerText = "Edit";
      this.toggleEditButtonClass(editButton);
    }
  }

  toggleEditButtonClass(editButton) {
    editButton.classList.toggle("btn-secondary");
    editButton.classList.toggle("btn-warning");
  }
}
