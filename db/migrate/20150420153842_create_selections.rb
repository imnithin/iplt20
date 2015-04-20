class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.integer :choice1
      t.integer :choice2
      t.integer :choice3
      t.integer :choice4
      t.integer :choice5
      t.integer :choice6
      t.integer :choice7
      t.integer :choice8
      t.timestamps null: false
    end
  end
end
