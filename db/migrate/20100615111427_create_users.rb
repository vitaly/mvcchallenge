class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password, :limit => 40
      t.string :full_name, :null => false
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
