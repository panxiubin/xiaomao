json.delete do
  json.(@teacher, :name)
  json.message "has been deleted!"
end
