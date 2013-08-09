stolpersteine-rails-server
==========================

# API Docs

## Locations

### SEARCH
returns all the locations around a latlng within a radius
@TODO



### GET
returns all the locations
"""
/locations.json
"""


search for locations
"""
/locations/:lat/:lng/(:radius).json
"""



### POST
creates a new location

@params: <br />
location[bezirk]<br />
  location[ortsteil]<br />
  location[adresse]<br />
  location[lnglat]  e.g. "POINT(23.456 53.23452)"<br />
  
"""
/locations.json
"""



## Biographies

### GET
returns all the biographies

"""
biographies.json
"""


### POST
creates a new biography

@params: <br />
  biography[name]<br />
  biography[adresse]<br />
  biography[geburtsname]<br />
  biography[verlegedatum]<br />
  biography[geburtstag]<br />
  biography[geburtsort]<br />
  biography[biografie]<br />
  biography[info]<br />
  biography[location_id]<br />
  
"""
/biographies.json
"""
