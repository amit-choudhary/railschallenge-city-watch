class Responder < ActiveRecord::Base

  enum type: ['Fire', 'Police', 'Medical']

  validates :name, :type, :capacity, presence: true
  validates :name, uniqueness: true
  validates :capacity, inclusion: (1..100).to_a

  has_many :emergencies_responders
  has_many :emergencies, through: :emergencies_responders

end
