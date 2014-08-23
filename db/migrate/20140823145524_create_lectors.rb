class CreateLectors < ActiveRecord::Migration
  def change
    create_table :lectors do |t|
      t.string :first_name
      t.string :father_name
      t.string :last_name
      t.string :bio
      t.string :photo_url

      t.timestamps
    end
  end
end
