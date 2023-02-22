class PredictionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def summary
    client = OpenAI::Client.new
    response = client.completions(
      parameters: {
          model: "text-davinci-003",
          prompt: "Generate a one line professional summary for a cv of a #{params[:job_title]}",
          max_tokens: 50
      })
    render json: { text: response["choices"][0]["text"] }
  end
end
