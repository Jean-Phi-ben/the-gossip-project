class User < ApplicationRecord
    belongs_to :city, required: false
end
