class Pin < ActiveRecord::Base
	# required in order to store the description in the DB
	attr_accessible :description

	# prevents a blank description
	# google search "rails validations" for others; e.g., length min/max
	validates :description, presence: true

	belongs_to :user

	validates :user_id, presence: true
end

