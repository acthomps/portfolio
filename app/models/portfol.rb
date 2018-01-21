class Portfol < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	#Can use either one to choose what topic you want to be seen
	def self.angular
		where(subtitle: 'Angular')
	end
	scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Ruby on Rails')}
end
