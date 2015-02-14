class AddReferenceToQuizzes < ActiveRecord::Migration
  def change
    add_reference :quizzes, :category, index: true
  end
end
