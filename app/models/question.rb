class Question < ActiveRecord::Base
  
  belongs_to :quiz

  validates :title, uniqueness: true

  
end
