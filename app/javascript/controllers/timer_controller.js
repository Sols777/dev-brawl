import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
 static targets = ["timer", "startButton","stopButton","alert","modal"]
 static values = { countdownTime: Number }

 connect() {
   this.countdownTimeValue = 700;
 }

 startTimer(event) {
   event.preventDefault();
   this.startTimeValue = Date.now();
   this.startButtonTarget.disabled = true;
   this.timerTarget.textContent = this.countdownTimeValue + ' seconds remaining';

   this.countdown = setInterval(() => {
     this.countdownTimeValue--;
     this.timerTarget.textContent = this.countdownTimeValue + ' seconds remaining';

     if (this.countdownTimeValue <= 0) {
       this.stopTimer();
     }
   }, 1000);

 }

 stopTimer(event) {
  clearInterval(this.countdown);
  this.endTimeValue = Date.now(); // Record the end time
  const elapsedSeconds = (this.endTimeValue - this.startTimeValue) / 1000;
  this.timerTarget.textContent = `Trial ended.Time: ${elapsedSeconds} seconds`;
  this.modalTarget.textContent = `You took ${elapsedSeconds} seconds!`;
  this.alertTarget.textContent = `You took ${elapsedSeconds} seconds!`;
  this.startButtonTarget.disabled = true;

  // Redirect to another page after 5 seconds (5000 milliseconds)
}


 addPoints1(event){

 }
}
