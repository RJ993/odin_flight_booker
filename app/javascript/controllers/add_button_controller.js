import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-button"
export default class extends Controller {
  static values = { count: {type: Number, default: 1}, max: Number}
  static targets = [ "button" ]
  static classes = [ "hide" ]
  addCheck() {
    this.countValue++
    if (this.countValue >= this.maxValue){
    this.buttonTarget.classList.add(this.hideClass)
    }
  }
  removeCheck() {
    this.countValue--
    if (this.countValue < this.maxValue){
    this.buttonTarget.classList.remove(this.hideClass)
    }
  }
}
