class CreateRatings < ActiveRecord::Migration
  def self.up
    create_table :ratings do |t|
      t.integer :user_id, :null => false
      t.integer :idea_id, :null => false
      t.integer :rating, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :ratings
  end
end
