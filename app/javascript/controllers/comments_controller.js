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
    const form = document.getElementById(formID);
    form.classList.toggle("d-none");
    form.classList.toggle("mt-5");
    const commentContent = document.getElementById(commentContentID);
    commentContent.classList.toggle("d-none");
  }
}