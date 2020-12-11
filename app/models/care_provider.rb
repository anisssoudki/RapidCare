class CareProvider < ApplicationRecord
    has_many :services
    has_many :patients, through: :services
end
