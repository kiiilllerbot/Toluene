class Issue < ApplicationRecord

  include PublicActivity::Model
	tracked owner: Proc.new { |controller, model| controller.current_user }

  belongs_to :user
  belongs_to :task
  has_many :comments, dependent: :destroy

  scope :active, -> {
  	where(:status =>'Active')
	}

	scope :solved, -> {
		where(:status =>'Solved')
	}

  validates_presence_of :title, :description
end
