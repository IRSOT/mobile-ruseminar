class ChangeSeminarsBelongins < ActiveRecord::Migration
  def change
remove_column :seminars, :seminar_type
  	remove_column :seminars, :seminar_section
  	add_column :seminars, :seminar_type_id, :integer
  	add_column :seminars, :seminar_section_id, :integer
  end
end
