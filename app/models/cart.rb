class Cart < ActiveRecord::Base
		before_save :set_total_amount
	  belongs_to :user
	  has_many :orders
	  has_many :products, through: :orders
	  has_one :payment


	  def set_total_amount
	  	total = 0
	  	self.products.each do |product|
		total = total + product.precio 	
	  end

	  self.total_amount = total
	end


end
