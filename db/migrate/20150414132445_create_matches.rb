class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1
      t.integer :team2
      t.string :venue
      t.datetime :start_time
      t.datetime :date

      t.timestamps null: false
    end
  end
end
