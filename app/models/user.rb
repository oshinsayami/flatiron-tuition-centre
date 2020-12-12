class User < ActiveRecord::Base
    has_many :teachers
    has_secure_password
end