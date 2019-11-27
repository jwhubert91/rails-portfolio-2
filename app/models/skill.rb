class Skill < ApplicationRecord
	include Placeholder

	after_initialize :set_defaults

	validates :title, :percent_used, presence: true

	def set_defaults
		self.badge ||= Placeholder.image_generator(height: '150',width: '150')
	end

end