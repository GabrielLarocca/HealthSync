class HealthProfile < ActiveRecord::Base
  has_one :health_profile
  has_many :medical_records
end
