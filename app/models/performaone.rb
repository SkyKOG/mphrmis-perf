class Performaone < ActiveRecord::Base
  attr_accessible :court_presence, :emer_calls, :emer_duty, :employee_id, :equip, :equipdefic, :equipdetail, :image_tests, :lab_tests, :leave_taken, :mlc_perf, :op_caesarion, :op_major, :op_minor, :patients_admit, :patients_opd, :patients_ref, :postmor_perf, :hospital_id, :designation_id,:emp_treasury_id, :month_id, :year
  belongs_to:district
  belongs_to:division
  belongs_to:employee_sanction_working
  belongs_to:hospital
  belongs_to:employee
  belongs_to:designation
  belongs_to:month
end
