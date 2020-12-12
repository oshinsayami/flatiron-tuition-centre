class Teacher < ActiveRecord::Base
    belongs_to :course
    belongs_to :user
    has_many :student_teachers
    has_many :students, through: :student_teachers
    end