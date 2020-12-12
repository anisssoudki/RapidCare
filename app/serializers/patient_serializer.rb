class PatientSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :address, :phoneNumber

end
