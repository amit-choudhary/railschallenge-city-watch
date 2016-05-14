class Emergency < ActiveRecord::Base

  validates :code, :fire_severity, :police_severity, :medical_severity, presence: true
  validates :code, unqiueness: true

end
