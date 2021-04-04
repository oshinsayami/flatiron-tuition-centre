class Teacher < ActiveRecord::Base
    belongs_to :user
    validates :name, :email, :address, :student, presence: true
end