import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="predictions"
export default class extends Controller {
  static targets = ["icon"]

  generateSummary() {
    const jobTitleEl = document.getElementById('resume_job_title')
    if (jobTitleEl.value) {
      this.setLoading(true)
      fetch(`/predictions/summary?job_title=${jobTitleEl.value}`)
      .then(response => response.json())
      .then((data) => {
        this.setLoading(false)
        document.getElementById('example_summary').innerHTML = data.text
        document.getElementById('example_summary_container').classList.remove('hidden')
      });
    } else {
      jobTitleEl.focus()
    }
  }

  setLoading(isLoading) {
    if (isLoading) {
      this.iconTarget.classList.replace('fa-lightbulb', 'fa-spinner')
      this.iconTarget.classList.add('animate-spin')
    } else {
      this.iconTarget.classList.replace('fa-spinner', 'fa-lightbulb')
      this.iconTarget.classList.remove('animate-spin')
    }
  }
}
