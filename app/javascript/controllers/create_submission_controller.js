import { Controller } from "@hotwired/stimulus"
export default class extends Controller {

  static targets = [ "output", "expectedOutput", "tick", "cross" ]
  static values = {
    expectedOutput: String
  }

connect()
{
  window.onmessage = (event) => {
    console.log("cheese")
    if(!event.data.result) return;
    const output = event.data.result.output.trim();
    console.log(output);
    this.outputTarget.innerHTML = output;
    const tickTarget = this.tickTarget;
    const crossTarget = this.crossTarget;
    const expected = this.expectedOutputTarget.innerHTML.trim();
    console.log(JSON.stringify(expected))
    console.log(JSON.stringify(output))
    if (output === expected) {
      tickTarget.classList.remove('hidden');
      crossTarget.classList.add('hidden');
    } else {
      crossTarget.classList.remove('hidden');
      tickTarget.classList.add('hidden');
    }
  }
 }
}
