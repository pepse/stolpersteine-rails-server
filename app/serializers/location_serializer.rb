class LocationSerializer < ActiveModel::Serializer
  attributes :id,
  			 #:lng,
  			 #:lat,
  			 :bezirk,
  			 :bio_count,
  			 :bio_ids

  def lng
  	object.lnglat.x
  end

  def lat
  	object.lnglat.y
  end

  def bio_count
  	object.biographies.size
  end

  def bio_ids
  	object.biographies.pluck(:id)
  end
end