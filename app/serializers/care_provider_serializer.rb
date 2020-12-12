class CareProviderSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :address, :phoneNumber

end
