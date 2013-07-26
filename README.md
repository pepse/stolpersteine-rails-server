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

### POST
creates a new location

@params: 
location[bezirk]\r\n<br />
  location[ortsteil]
  location[adresse]
  
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

@params: 
  biography[name]
  biography[adresse]
  biography[geburtsname]
  biography[verlegedatum]
  biography[geburtstag]
  biography[geburtsort]
  biography[biografie]
  biography[info]
  
"""
/biographies.json
"""
