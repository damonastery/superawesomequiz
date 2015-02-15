class FixTypoToQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :explaination, :text
    add_column :questions, :explanation, :text 
  end
end
