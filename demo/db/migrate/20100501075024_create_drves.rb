class CreateDrves < ActiveRecord::Migration
  def self.up
    create_table :drves do |t|
      t.string :drfcode
      t.string :drfname
      t.string :dcfcode

      t.timestamps
    end
  end

  def self.down
    drop_table :drves
  end
end
