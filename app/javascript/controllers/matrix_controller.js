// app/javascript/controllers/matrix_controller.js
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.initializeCanvas();
    this.startMatrixRain();
    this.addResizeListener();
  }

  initializeCanvas() {
    this.canvas = this.element;
    this.ctx = this.canvas.getContext('2d');
    this.setCanvasDimensions();
    this.characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789@#$%^&*()*&^%";
    this.fontSize = 10;
    this.columns = this.canvas.width / this.fontSize;
    this.drops = new Array(Math.floor(this.columns)).fill(0);
  }

  setCanvasDimensions() {
    this.canvas.width = window.innerWidth;
    this.canvas.height = 100;
  }

  startMatrixRain() {
    setInterval(() => {
      this.drawMatrixRain();
    }, 33);
  }

  drawMatrixRain() {
    this.ctx.fillStyle = 'rgba(0, 0, 0, 0.05)';
    this.ctx.fillRect(0, 0, this.canvas.width, this.canvas.height);
    
    this.ctx.fillStyle = '#0F0';
    this.ctx.font = `${this.fontSize}px monospace`;

    for (let i = 0; i < this.drops.length; i++) {
      const text = this.characters.charAt(Math.floor(Math.random() * this.characters.length));
      this.ctx.fillText(text, i * this.fontSize, this.drops[i] * this.fontSize);
      
      if (this.drops[i] * this.fontSize > this.canvas.height && Math.random() > 0.975) {
        this.drops[i] = 0;
      }
      this.drops[i]++;
    }
  }

  addResizeListener() {
    window.addEventListener('resize', () => {
      this.setCanvasDimensions();
      this.drops = new Array(Math.floor(this.canvas.width / this.fontSize)).fill(0);
    });
  }
}
