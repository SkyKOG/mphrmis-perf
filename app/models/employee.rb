class Employee < ActiveRecord::Base
  attr_accessible :blood_group_id, :caste_id, :category_id, :emp_dob, :emp_email, :emp_fathername, :emp_fname, :emp_full_name, :gender_id, :emp_id, :emp_lname, :emp_loc_master_id, :emp_mname, :emp_mobile_no, :emp_permanent_address, :emp_phone_no, :religion_id, :employee_cadre_id, :ddo_code, :employment_type_id, :district_id, :division_id, :hospital_id, :block_id
  
  has_many:postings
  has_many:dependents
  has_many:qualifications
  has_many:leaveemps
  has_many:achievements
  has_many:showcauses
  has_many:promotions
  has_many:additional_charges
  has_many:addresses
  has_many:employee_work_details
  has_many:employee_sanction_workings
  
  belongs_to:gender
  belongs_to:category
  belongs_to:religion
  belongs_to:caste
  belongs_to:blood_group
  belongs_to:employee_cadre 
  belongs_to:employment_type
  belongs_to:hospital
  belongs_to:district
  belongs_to:division
  belongs_to:block
end
