class User < ApplicationRecord

  devise :invitable, :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :projects
  has_many :tasks
  has_many :issues
  has_many :comments
  has_many :works
  has_many :todos
  has_many :notes
  has_many :bugs

end
