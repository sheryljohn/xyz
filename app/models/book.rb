class Book < ActiveRecord::Base
	validates :title, uniqueness: true
	
	validates :author, :price,
	:poster_url, presence: true
  validates_format_of :title, :author, :with => /\A[^0-9`!@#\$%\^&*+_=]+\z/

  

end
