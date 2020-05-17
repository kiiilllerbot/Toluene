class Issue < ApplicationRecord

  belongs_to :user
  belongs_to :task

  scope :active, -> {
  	where(:status =>'Active')
	}

	scope :solved, -> {
		where(:status =>'Solved')
	}

  validates_presence_of :title, :description
end
