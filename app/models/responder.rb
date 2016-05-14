class Responder < ActiveRecord::Base

  enum type: ['Fire', 'Police', 'Medical']

  validates :name, :type, :capacity, presence: true
  validates :name, uniqueness: true
  validates :capacity, inclusion: (1..100).to_a

end
