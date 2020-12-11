teacher1 = Teacher.create(:name => "Jenn")
teacher2 = Teacher.create(:name => "Sam")
teacher3 = Teacher.create(:name =>"John")

student1 = Student.create(:name => "Sim")
student2 = Student.create(:name => "Bis")
student3 = Student.create(:name => "Dip")

course1 = Course.create(:title =>"CSS", :teacher_id=>1, :student_id => 1)
course2 = Course.create(:title =>"Social", :teacher_id=>2, :student_id => 2)
course3 = Course.create(:title =>"Science", :teacher_id=>3, :student_id => 3)


