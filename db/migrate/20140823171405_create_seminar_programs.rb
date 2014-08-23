class CreateSeminarPrograms < ActiveRecord::Migration
  def change
    create_table :seminar_programs do |t|
      t.integer :ruseminar_id
      t.text :program

      t.timestamps
    end
  end
end
