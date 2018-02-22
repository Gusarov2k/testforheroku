class Product < ActiveRecord::Base
# add validates
	validates :title, :descriotion, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.02}
	validates :title, uniqueness: true
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
	}
end
