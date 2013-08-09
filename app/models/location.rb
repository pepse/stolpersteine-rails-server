class Location < ActiveRecord::Base
  has_many :biographies, dependent: :destroy

  # By default, use the GEOS implementation for spatial columns.
  self.rgeo_factory_generator = RGeo::Geos.factory_generator

  # But use a geographic implementation for the :lnglat column.
  GEOG_FACTORY ||= RGeo::Geographic.spherical_factory(:srid => 4326)
  set_rgeo_factory_for_column(:lnglat, GEOG_FACTORY)

  scope :nearby, lambda { |radius_in_km, lng, lat|
    point = GEOG_FACTORY.point(lng, lat)
    where("ST_DWithin(lnglat, ST_GeomFromText('#{point}'), #{radius_in_km.to_f*1000} )")
  }
end
