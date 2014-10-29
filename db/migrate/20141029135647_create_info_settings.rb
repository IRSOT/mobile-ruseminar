class CreateInfoSettings < ActiveRecord::Migration
  def change
    create_table :info_settings do |t|
      t.string :category
      t.string :url
      t.string :title_rus
      t.string :title_eng

      t.timestamps
    end
  end
end
