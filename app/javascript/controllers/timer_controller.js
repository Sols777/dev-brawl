import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
 static targets = ["timer", "startButton","stopButton"]
 static values = { countdownTime: Number }

 connect() {
   this.countdownTimeValue = 700; // Set the countdown time to 60 seconds
 }

 startTimer(event) {
   event.preventDefault();
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
   this.timerTarget.textContent = 'Timer ended';
   this.startButtonTarget.disabled = true;
 }
}
