class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :itemcode
      t.string :itemname

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
