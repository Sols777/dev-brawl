import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
 static targets = ["timer","startButton","stopButton","alert","modal","time","blur"]
 static values = { countdownTime: Number }

 connect() {
   this.countdownTimeValue = 900;
   this.timeTarget.value = 0;
 }

 startTimer(event) {
   event.preventDefault();
   this.startTimeValue = Date.now();
   this.startButtonTarget.disabled = true;
   this.timerTarget.textContent = this.countdownTimeValue + ' seconds remaining';
   this.blurTarget.classList.remove('blurred');
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
  this.timeTarget.value = elapsedSeconds;
  }
}
