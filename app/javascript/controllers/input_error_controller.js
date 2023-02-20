import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dialog"
export default class extends Controller {
  static targets = ["input", "errorMessage"]

  onInput() {
    this.inputTarget.classList.replace('border-error', 'border-secondary')
    if (this.hasErrorMessageTarget) {
      this.errorMessageTarget.remove()
    }
  }
}
