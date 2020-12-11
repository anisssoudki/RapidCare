class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :CareProvider, :patient
  belongs_to :CareProvider
  belongs_to :Service
end
