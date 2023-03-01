import { Controller } from "@hotwired/stimulus"
import { get } from '@rails/request.js'

// Connects to data-controller="predictions"
export default class extends Controller {
  static targets = ["icon"]

  async generateSummary() {
    const jobTitleEl = document.getElementById('resume_job_title')
    if (jobTitleEl.value) {
      this.setLoading(true)
      const response = await get(`/predictions/summary?job_title=${jobTitleEl.value}`)
      this.setLoading(false)
      if (response.ok) {
        const body = await response.json
        document.getElementById('example_summary').innerHTML = body.text
        document.getElementById('example_summary_container').classList.remove('hidden')
      }
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
      this.iconTarget.classList.add('fa-regular')
      this.iconTarget.classList.remove('animate-spin')
    }
  }
}
