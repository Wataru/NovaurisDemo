class CreateActtypes < ActiveRecord::Migration
  def self.up
    create_table :acttypes do |t|
      t.string :acttypecode
      t.string :acttypename

      t.timestamps
    end
  end

  def self.down
    drop_table :acttypes
  end
end
