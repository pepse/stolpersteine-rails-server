json.array!(@biographies) do |biography|
  json.extract! biography, :name, :adresse, :geburtsname, :verlegedatum, :geburtstag, :geburtsort, :biografie, :info
  json.url biography_url(biography, format: :json)
end
