class CreateSeminarTypes < ActiveRecord::Migration
  def change
    create_table :seminar_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
