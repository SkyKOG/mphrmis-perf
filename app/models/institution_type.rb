class InstitutionType < ActiveRecord::Base
  attr_accessible :Institution_type

  has_many:institution_masters
  has_many:hospitals
  validates_uniqueness_of(:Institution_type)
  validates_presence_of(:Institution_type)
end
