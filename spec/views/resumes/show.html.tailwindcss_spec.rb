require 'rails_helper'

RSpec.describe "resumes/show", type: :view do
  before(:each) do
    assign(:resume, Resume.create!(
      first_name: "First Name",
      last_name: "Last Name",
      email: "Email",
      phone: "Phone",
      country: "Country",
      city: "City",
      job_title: "Job Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Job Title/)
  end
end
