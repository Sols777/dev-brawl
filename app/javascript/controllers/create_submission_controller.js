import { Controller } from "@hotwired/stimulus"
export default class extends Controller {

  static targets = [ "output", "expectedOutput", "tick", "cross" ,"wincon","losecon","result"]
  static values = {
    expectedOutput: String
  }

  connect()
  {
    const iFrame = document.getElementById('bad-boy-editor');
    const challengeData = document.getElementById('challenge-data');
    const languageName = challengeData.dataset.languageName;
    const challengeContent = challengeData.dataset.challengeContent;

    iFrame.onload = function() {
      iFrame.contentWindow.postMessage({
        eventType: 'populateCode',
        language: `${languageName.toLowerCase()}`,
        files: [
            {
                "name": `${languageName.toLowerCase()}DevBrawl1.js`,
                "content": `${challengeContent}`
            }
        ]
      }, "*");
      }

    window.onmessage = (event) => {
      if(!event.data.result) return;
      const output = event.data.result.output.trim();
      this.outputTarget.innerHTML = output;
      const tickTarget = this.tickTarget;
      const crossTarget = this.crossTarget;
      const expected = this.expectedOutputTarget.innerHTML.trim();
      const winconTarget = this.winconTarget;
      const loseTarget = this.loseconTarget;
      const resultTarget = this.resultTarget;

      if (output === expected) {
        tickTarget.classList.remove('hidden');
        crossTarget.classList.add('hidden');
        winconTarget.classList.remove('hidden');
        loseTarget.classList.add('hidden');
        resultTarget.value = true;
      } else {
        crossTarget.classList.remove('hidden');
        tickTarget.classList.add('hidden');
        loseTarget.classList.remove('hidden');
        winconTarget.classList.add('hidden');
        resultTarget.value = false;
      }
    }

  }
}
