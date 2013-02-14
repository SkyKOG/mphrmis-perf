class EmployeeWorkDetail < ActiveRecord::Base
  attr_accessible :designation_id, :employee_class, :employee_id, :join_date, :medical_registration_date, :medical_registration_number, :pub_svc_comm_no, :pub_svc_comm_year, :recruitment_mode_id, :status_id, :superannuation_date
end
