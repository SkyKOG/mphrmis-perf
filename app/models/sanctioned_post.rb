class SanctionedPost < ActiveRecord::Base
  attr_accessible :hospital_id, :sanctioned_posts, :designation_id
  belongs_to:designation
  belongs_to:hospital
  
end
