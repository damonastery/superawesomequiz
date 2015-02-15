class Answer < ActiveRecord::Base

  belongs_to :question
  has_many :selections, dependent: :destroy
  has_many :users, through: :selections

  validates :body, presence: true

end
