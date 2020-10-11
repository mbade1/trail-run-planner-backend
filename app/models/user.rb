class User < ApplicationRecord
    has_many :journals

    has_secure_password

    validates :username, uniqueness: true

end
