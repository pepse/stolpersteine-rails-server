class BiographySerializer < ActiveModel::Serializer
  attributes :id,
  			 :name,
  			 :location_id,
  			 #:lng,
  			 #:lat,
  			 #:bezirk,
  			 #:bio_count,
  			 #:bio_ids

  def location_id
  	object.location.id
  end
end