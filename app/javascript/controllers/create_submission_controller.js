import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-submission"
export default class extends Controller {
  connect() {
    console.log("test");
  }
}
