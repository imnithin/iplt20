class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :runs
      t.integer :wickets
      t.references :player
      t.timestamps null: false
    end
  end
end
