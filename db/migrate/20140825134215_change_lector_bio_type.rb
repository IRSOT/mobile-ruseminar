class ChangeLectorBioType < ActiveRecord::Migration
  def change
  	remove_column :lectors, :bio
  	add_column :lectors, :bio, :text
  end
end
