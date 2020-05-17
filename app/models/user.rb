class User < ApplicationRecord

  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :tasks
  
end
