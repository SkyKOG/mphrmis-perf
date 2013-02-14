class Posting < ActiveRecord::Base
  attr_accessible :designation_id, :employee_id, :hospital_id, :payscale, :posting_from, :posting_to, :district_id
  
  belongs_to:district  
  belongs_to:employee
  belongs_to:hospital
  belongs_to:designation
end
