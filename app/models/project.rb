class Project < ApplicationRecord

	include PublicActivity::Model
	tracked owner: Proc.new { |controller, model| controller.current_user }
	
  belongs_to :user
  has_many :tasks, dependent: :destroy
  validates_presence_of :title, :category, :size, :budget, :client_name, :client_email, :description, :deadline, :status, :image_link

  scope :active, -> {
  	where(:status =>'Active')
	}

	scope :finished, -> {
		where(:status =>'Finished')
	}

	scope :postponed, -> {
		where(:status =>'Postponed')
	}

end