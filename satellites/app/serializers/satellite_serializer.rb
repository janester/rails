class SatelliteSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :distance, :diameter, :period
end
