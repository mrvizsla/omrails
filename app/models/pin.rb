class Pin < ActiveRecord::Base
	# required in order to store the description in the DB
	# & now the image too
	attr_accessible :description, :image

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>", thumb: "100x100>"}

	# prevents a blank description
	# google search "rails validations" for others; e.g., length min/max
	validates :description, presence: true
	validates :user_id, presence: true
	validates_attachment :image, presence: true,
                            	content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                           	 	size: { less_than: 5.megabytes }
end

