import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ["list"]

  connect() {
    console.log("Hello from our first Stimulus controller");
  }

  fire(){
    console.log("toggle");
    console.log(this.listTarget);
    this.listTarget.classList.toggle("d-none");
  }
}
