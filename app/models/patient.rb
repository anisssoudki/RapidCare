class Patient < ApplicationRecord
    has_many :services
    has_many :care_providers, through: :services
end
