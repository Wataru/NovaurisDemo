class CreateDcfs < ActiveRecord::Migration
  def self.up
    create_table :dcfs do |t|
      t.string :dcfcode
      t.string :dcfname

      t.timestamps
    end
  end

  def self.down
    drop_table :dcfs
  end
end
