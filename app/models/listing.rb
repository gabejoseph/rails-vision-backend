class Listing < ApplicationRecord
    belongs_to :user, -> { where host: true }
end
