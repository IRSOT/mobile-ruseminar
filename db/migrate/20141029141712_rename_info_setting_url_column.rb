class RenameInfoSettingUrlColumn < ActiveRecord::Migration
  def change
  	rename_column :info_settings, :url, :page_url
  end
end
