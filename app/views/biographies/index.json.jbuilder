json.array!(@biographies) do |biography|
  json.extract! biography, :name, :adress, :geburtsname, :verlegerdatum, :geburtstag, :geburtsort, :biografie, :info
  json.url biography_url(biography, format: :json)
end
