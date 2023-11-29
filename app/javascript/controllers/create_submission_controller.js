import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-submission"
export default class extends Controller {
  connect() {
    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/javascript");
  }
}
