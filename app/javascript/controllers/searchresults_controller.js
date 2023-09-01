import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="searchresults"
export default class extends Controller {
  static targets = ["searchOutput"]

  connect() {
    console.log("Bonjour from searchresults controller")
  }

  fire(event) {
    const params = new URLSearchParams(window.location.search);
    const query = params.get('query');
    if (query == "") {
      event.preventDefault();
    } else
      this.searchOutputTarget.scrollIntoView({ behavior: "smooth" });
  }
}
