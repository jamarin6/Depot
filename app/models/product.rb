class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :title, uniqueness: true,
					  length: { minimum: 10 }
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}   # *****ESTO NO VALE como viene en el libro, he borrado $ aqui -> png)$}i, y va ok*****
end
