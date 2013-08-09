# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
data = JSON.parse(File.read('db/internal.json'))
data.each do |l|
	loc = Location.new(bezirk: l["bezirk"], ortsteil: l["ortsteil"], adresse: l["adresse"], lnglat: l["lnglat"]) 
	if !l["persons"].nil?
		l["persons"].each do |b|
			bio_params = { name: b["name"],
						   geburtsname: b["geburtsname"],
						   verlegedatum: b["verlegedatum"],
						   geburtstag: b["geburtstag"],
						   geburtsort: b["geburtsort"],
						   biografie: b["biografie"],
						   info: b["info"],
						   occupation: b["occupation"]
						}
			loc.biographies.new(bio_params)
		end
	end
	loc.save
end