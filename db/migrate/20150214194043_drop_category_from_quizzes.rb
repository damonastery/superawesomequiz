class DropCategoryFromQuizzes < ActiveRecord::Migration
  def change
    remove_column :quizzes, :category
  end
end
