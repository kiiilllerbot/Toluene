class Task < ApplicationRecord

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
