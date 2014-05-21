class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :title, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	#validates_format_of :image_url, allow_blank: true,
	#	:with =>     %r{\.(gif|jpg|png)}i,
	#	:message =>  'must be a URL for GIF, JPG or PNG image.'
    
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}   # *****ESTO NO VALE como viene en el libro, he borrado $ aqui -> png)$} y va ok*****


end
