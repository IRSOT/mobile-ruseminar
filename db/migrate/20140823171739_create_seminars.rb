class CreateSeminars < ActiveRecord::Migration
  def change
    create_table :seminars do |t|
      t.integer :ruseminar_id
      t.string :title
      t.integer :type
      t.integer :section
      t.date :date_start
      t.date :date_end
      t.integer :online
      t.integer :lector
      t.string :url
      t.integer :price1
      t.integer :price2

      t.timestamps
    end
  end
end
