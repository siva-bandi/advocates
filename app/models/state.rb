class State < ApplicationRecord
	validates :name, presence: true

	has_many :advocates_states
	has_many :advocates, through: :adovocates_states
	has_many :cases
end
