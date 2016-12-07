class User < ActiveRecord::Base





  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :carts

         after_create :create_empty_cart

         def create_empty_cart
         	self.carts.build(statu:"open")
         	
         end
end
