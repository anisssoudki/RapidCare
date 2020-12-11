class Service < ApplicationRecord
    belongs_to :CareProvider
    belongs_to :Service
end
