class Student < ActiveRecord::Base
    belongs_to :course
    has_many :student_teachers
    has_many :teachers, through: :student_teachers
end