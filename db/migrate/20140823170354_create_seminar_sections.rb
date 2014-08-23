class CreateSeminarSections < ActiveRecord::Migration
  def change
    create_table :seminar_sections do |t|
      t.string :section

      t.timestamps
    end
  end
end
