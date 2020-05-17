class Work < ApplicationRecord
  belongs_to :user
  belongs_to :task

  validates_presence_of :title, :description
end
