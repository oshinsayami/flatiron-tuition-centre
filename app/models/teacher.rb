class Teacher < ActiveRecord::Base
    belongs_to :course
    belongs_to :user
    belongs_to :student
end