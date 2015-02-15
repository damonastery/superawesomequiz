class CreateUserQuizzes < ActiveRecord::Migration
  def change
    create_table :user_quizzes do |t|
      t.references :user, index: true
      t.references :quiz, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_quizzes, :users
    add_foreign_key :user_quizzes, :quizzes
  end
end
