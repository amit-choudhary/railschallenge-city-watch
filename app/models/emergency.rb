class Emergency < ActiveRecord::Base

  validates :code, :fire_severity, :police_severity, :medical_severity, presence: true
  validates :code, uniqueness: true

  validates :fire_severity, :police_severity, :medical_severity, numericality: { only_integer: true, greater_than: 0 }

  has_many :emergencies_responders
  has_many :responders, through: :emergencies_responders

end
