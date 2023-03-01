class Employment < ApplicationRecord
  belongs_to :resume

  validates_presence_of :job_title
end
