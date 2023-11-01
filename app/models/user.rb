class User < ApplicationRecord
    validates :username, presence: true, length: {minimum: 3, maxiumum: 15}
    has_secure_password
end
