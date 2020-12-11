class CareProviderSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :address, :phoneNumber
  has_many :services
  has_many :patients, through: :services
end
