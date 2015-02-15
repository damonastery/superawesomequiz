class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.references :user, index: true
      t.references :answer, index: true
      t.integer :points

      t.timestamps null: false
    end
    add_foreign_key :selections, :users
    add_foreign_key :selections, :answers
  end
end
