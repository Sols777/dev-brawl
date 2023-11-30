import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
 static targets = [ "expectedOutput", "tick", "cross" ]
 static values = {
  challengeId: Number
 }

 loadExpectedResult(event) {
  event.preventDefault()
  console.log(this.challengeIdValue);
    const url = '/expected_result/' + this.challengeIdValue
    fetch(url, {headers: {"Accept": "application/json"}})
    .then(response => response.json())
    .then(data => {
      console.log(data)
      const expectedResult = data["expected_result"];
     this.expectedOutputTarget.innerHTML = expectedResult
     this.compareResult(expectedResult);
    });
  }

  compareResult(result) {
    var code = ace.edit("editor").getValue();
    var currentOutput = eval(code);

    if (currentOutput === result) {
      this.tickTarget.classList.remove('hidden');
      this.crossTarget.classList.add('hidden');
    } else {
      this.crossTarget.classList.remove('hidden');
      this.tickTarget.classList.add('hidden');
    }
  }
}
