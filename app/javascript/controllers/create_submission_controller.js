import { Controller } from "@hotwired/stimulus"
export default class extends Controller {

  static targets = [ "output", "expectedOutput", "tick", "cross" ]
  static values = {
    expectedOutput: String
  }

connect() {
 var iFrame = document.getElementById('bad-boy-editor');
 var challengeData = document.getElementById('challenge-data');
 var languageName = challengeData.dataset.languageName;
 var challengeContent = challengeData.dataset.challengeContent;


 // Wait for the iframe to load
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
