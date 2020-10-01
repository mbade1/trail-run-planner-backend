class User < ApplicationRecord
    has_many :journals
    has_many :trails, through: :journals
    
    has_secure_password
end
