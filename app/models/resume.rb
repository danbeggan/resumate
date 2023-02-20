class Resume < ApplicationRecord
  validates_presence_of :first_name :last_name :email :job_title
end
