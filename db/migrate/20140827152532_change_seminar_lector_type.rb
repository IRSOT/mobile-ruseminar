class ChangeSeminarLectorType < ActiveRecord::Migration
  def change
  	remove_column :seminars, :lector
  	add_column :seminars, :lectors, :string
  end
end
