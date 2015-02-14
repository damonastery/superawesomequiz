class Quiz < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :level, presence: true
  



end
