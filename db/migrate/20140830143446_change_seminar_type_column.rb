class ChangeSeminarTypeColumn < ActiveRecord::Migration
  def change
  	remove_column :seminars, :type
  	remove_column :seminars, :section
  	add_column :seminars, :seminar_type, :integer
  	add_column :seminars, :seminar_section, :integer
  end
end
