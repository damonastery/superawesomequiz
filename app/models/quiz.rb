class Quiz < ActiveRecord::Base
  
  belongs_to :category
  has_many :questions

  validates :title, presence: true
  validates :body, presence: true
  validates :level, presence: true
  



end
