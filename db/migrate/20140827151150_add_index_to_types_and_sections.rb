class AddIndexToTypesAndSections < ActiveRecord::Migration
  def change
  	rename_column :seminar_types, :type, :name
  	rename_column :seminar_sections, :section, :name
  	add_index :seminar_types, :name
  	add_index :seminar_sections, :name
  end
end
