import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ["list"]

  connect() {
  }

  fire(){
    this.listTarget.classList.toggle("d-none");
  }
}
