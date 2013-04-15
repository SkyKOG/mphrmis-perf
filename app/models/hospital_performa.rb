class HospitalPerforma < ActiveRecord::Base
  attr_accessible :blood_unit_transfused, :caesarion_delivery, :ctmri, :ecg, :ecotmt, :hemo, :image_scans, :indoor, :major_surgery, :minor_surgery, :mlc, :normal_delivery, :outdoor, :pathology, :post_mortem, :remarks, :ultra_sound, :hospital_id, :month_id, :year
  belongs_to:district
  belongs_to:division
  belongs_to:employee_sanction_working
  belongs_to:hospital
  belongs_to:month

	validates_numericality_of :blood_unit_transfused, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :caesarion_delivery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ctmri, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ecg, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ecotmt, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :hemo, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :image_scans, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :indoor, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :major_surgery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :minor_surgery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :mlc, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :normal_delivery, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :outdoor, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :pathology, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :post_mortem, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"
	validates_numericality_of :ultra_sound, :only_integer => true, :greater_than_or_equal_to => 0,:message => "Please enter 0 or a positive number"

def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |hospital_performa|
      csv << hospital_performa.attributes.values_at(*column_names)
    end
  end
end
end
