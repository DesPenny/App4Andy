

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  

  attr_accessible :accepttos, :email, :password, :password_confirmation, :terms
  

  attr_accessor :terms
  validates_acceptance_of :terms

  has_many  :notes
  

end
