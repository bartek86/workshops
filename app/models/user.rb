class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :recoverable and :omniauthable
  devise :database_authenticatable, :registerable,
          :rememberable, :trackable, :validatable
  
  has_many :reviews
  has_many :products
  
  validates :firstname, :lastname, presence: :true
  
  
end
