class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :issue

  validates_presence_of :body

  after_commit :create_notifications, on: :create

  private

  def create_notifications
  	Notification.create do |notification|
  		notification.notify_type = 'issue'
  		notification.actor = self.user
  		notification.user = self.issue.user
  		notification.target = self
  		notification.second_target = self.issue
  	end
  end
  
end
