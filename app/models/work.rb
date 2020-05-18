class Work < ApplicationRecord

  include PublicActivity::Model
  tracked owner: Proc.new { |controller, model| controller.current_user }
  
  belongs_to :user
  belongs_to :task

  validates_presence_of :title, :description
end
