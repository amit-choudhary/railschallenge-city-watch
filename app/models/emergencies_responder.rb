class EmergenciesResponder < ActiveRecord::Base

  validates :emergency, :responder, presence: true

  belongs_to :emergency
  belongs_to :responder

end
