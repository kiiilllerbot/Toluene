class Task < ApplicationRecord

  include PublicActivity::Model
	tracked owner: Proc.new { |controller, model| controller.current_user }

  belongs_to :user
  belongs_to :project
  has_many :works, dependent: :destroy

  scope :active, -> {
  	where(:status =>'Active')
	}

	scope :finished, -> {
		where(:status =>'Finished')
	}

  validates_presence_of :title, :description, :deadline, :status, :user_id
end
