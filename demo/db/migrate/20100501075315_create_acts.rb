class CreateActs < ActiveRecord::Migration
  def self.up
    create_table :acts do |t|
      t.date :plandate
      t.string :dcfcode
      t.string :drfcode
      t.string :itemcode
      t.string :acttypecode
      t.date :visitdate

      t.timestamps
    end
  end

  def self.down
    drop_table :acts
  end
end
