import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="create-submission"
export default class extends Controller {
  static targets = ["output"]

  connect() {
    var editor = ace.edit("editor");
    editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/javascript");
  }

  runCode(){
    var code = ace.edit("editor").getValue();
    var result = eval(code);
    console.log(result);
    this.outputTarget.innerHTML = result;
  }
}
