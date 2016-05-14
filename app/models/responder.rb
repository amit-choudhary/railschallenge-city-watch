class Responder < ActiveRecord::Base

  self.inheritance_column = nil

  enum type: ['Fire', 'Police', 'Medical']

  validates :name, :type, :capacity, presence: true
  validates :name, uniqueness: true
  validates :capacity, inclusion: (1..5).to_a

  has_many :emergencies_responders
  has_many :emergencies, through: :emergencies_responders

end
