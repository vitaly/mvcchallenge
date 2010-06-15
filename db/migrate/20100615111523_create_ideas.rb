class CreateIdeas < ActiveRecord::Migration
  def self.up
    create_table :ideas do |t|
      t.integer :user_id, :null => false
      t.string :title, :null => false
      t.text :description, :null => false
      t.integer :rating, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :ideas
  end
end
