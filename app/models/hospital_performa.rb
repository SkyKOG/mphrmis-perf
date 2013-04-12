class HospitalPerforma < ActiveRecord::Base
  attr_accessible :blood_unit_transfused, :caesarion_delivery, :ctmri, :district_id, :division_id, :ecg, :ecotmt, :hemo, :image_scans, :indoor, :major_surgery, :minor_surgery, :mlc, :normal_delivery, :outdoor, :pathology, :post_mortem, :remarks, :ultra_sound, :hospital_id
  belongs_to:district
  belongs_to:division
  belongs_to:employee_sanction_working
  belongs_to:hospital
end
