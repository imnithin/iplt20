class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.references :team

      t.timestamps null: false
    end
    add_index :players, :first_name, unique: true
    add_index :players, :last_name, unique: true
  end
end
