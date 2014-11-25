class Auction < ActiveRecord::Base
	belongs_to :user

	validates :name, presence: true
	validates_format_of :name, :with => /[a-z\s]/i, :message => "can only contain letters and numbers."
	validates :description, presence: true
	validates :description, length: {in: 15..150 , message: "debe tener entre 15 y 150 caracteres" }	
	validates_format_of :description, :with => /./
	validates :link, url: true

end

