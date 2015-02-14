class Quiz < ActiveRecord::Base
  belongs_to :category

  validates :title, presence: true
  validates :body, presence: true
  validates :level, presence: true
  



end
