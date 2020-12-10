class Course < ActiveRecord::Base
    belongs_to :teacher
    belongs_to :student
    belongs_to :user
end