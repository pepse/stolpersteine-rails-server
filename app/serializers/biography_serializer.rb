class BiographySerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :locations
end