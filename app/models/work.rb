class Work < ApplicationRecord
	include Placeholder

	has_many :technologies

	after_initialize :set_defaults
	accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }

	validates :title, :body, :main_img, :thumb_img, presence: true
	validates :body, length: {maximum: 1000}

	def self.angular
		where(subtitle: 'Angular')
	end

	def set_defaults
		self.main_img ||= Placeholder.image_generator(height: '600',width: '400')
		self.thumb_img ||= Placeholder.image_generator(height: '350',width: '250')
	end

end
