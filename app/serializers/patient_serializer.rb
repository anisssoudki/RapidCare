class PatientSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :address, :phoneNumber
  has_many :services
  has_many :care_providers, through: :services
end
