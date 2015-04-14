class CreateUserMatches < ActiveRecord::Migration
  def change
    create_table :user_matches do |t|
      t.references :user
      t.references :match
      t.timestamps null: false
    end
  end
end
