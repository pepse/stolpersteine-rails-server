class Location < ActiveRecord::Base
  has_many :biographies, dependent: :destroy

  # By default, use the GEOS implementation for spatial columns.
  self.rgeo_factory_generator = RGeo::Geos.factory_generator

  # But use a geographic implementation for the :lnglat column.
  set_rgeo_factory_for_column(:lnglat, RGeo::Geographic.spherical_factory(srid: 4326))
end
