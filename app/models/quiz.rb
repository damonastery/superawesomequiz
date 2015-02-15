class Quiz < ActiveRecord::Base
  
  belongs_to :category
  has_many :questions

  has_many :user_quizzes, dependent: :destroy
  has_many :users, through: :user_quizzes

  validates :title, presence: true
  validates :body, presence: true
  validates :level, presence: true, numericality: true
  validates :category_id, presence: true

end
