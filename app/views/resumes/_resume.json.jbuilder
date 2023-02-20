json.extract! resume, :id, :first_name, :last_name, :email, :phone, :country, :city, :job_title, :created_at, :updated_at
json.url resume_url(resume, format: :json)
