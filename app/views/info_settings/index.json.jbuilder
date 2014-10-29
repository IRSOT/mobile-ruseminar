json.array!(@info_settings) do |info_setting|
  json.extract! info_setting, :id, :category, :url, :title_rus, :title_eng
  json.url info_setting_url(info_setting, format: :json)
end
