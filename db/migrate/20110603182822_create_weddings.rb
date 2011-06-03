class CreateWeddings < ActiveRecord::Migration
  def self.up
    create_table :weddings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :weddings
  end
end
