class Location < ActiveRecord::Base
  has_many :biographies, dependent: :destroy

  # By default, use the GEOS implementation for spatial columns.
  self.rgeo_factory_generator = RGeo::Geos.factory_generator

  # But use a geographic implementation for the :lnglat column.
  set_rgeo_factory_for_column(:lnglat, RGeo::Geographic.spherical_factory(srid: 4326))

  GEOG_FACTORY ||= RGeo::Geographic.spherical_factory(:srid => 4326)

  def as_json(options = nil)
   {
      :lng => self.lnglat.x,
      :lat => self.lnglat.y,
      :bezirk => self.bezirk,
      :bio_count => self.biographies.size,
      :bio_ids => self.biographies.pluck(:id)
    }
  end
  scope :nearby, lambda { |radius_in_km, lng, lat|
    point = GEOG_FACTORY.point(lng, lat)
    where("ST_DWithin(lnglat, ST_GeomFromText('#{point}'), #{radius_in_km.to_f*1000} )")
  }
end
