require 'rails_helper'

RSpec.describe "resumes/new", type: :view do
  before(:each) do
    assign(:resume, Resume.new(
      first_name: "MyString",
      last_name: "MyString",
      email: "MyString",
      phone: "MyString",
      country: "MyString",
      city: "MyString",
      job_title: "MyString"
    ))
  end

  it "renders new resume form" do
    render

    assert_select "form[action=?][method=?]", resumes_path, "post" do

      assert_select "input[name=?]", "resume[first_name]"

      assert_select "input[name=?]", "resume[last_name]"

      assert_select "input[name=?]", "resume[email]"

      assert_select "input[name=?]", "resume[phone]"

      assert_select "input[name=?]", "resume[country]"

      assert_select "input[name=?]", "resume[city]"

      assert_select "input[name=?]", "resume[job_title]"
    end
  end
end
