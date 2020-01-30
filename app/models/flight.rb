class Flight < ApplicationRecord
    belongs_to :plane, optional: true
    has_many :reservation
end
