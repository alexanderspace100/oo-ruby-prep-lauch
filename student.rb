class Student
	def initialize(name, grade)
		@name = name
		@grade = grade
	end

    def better_grade_than?(other_student)
       grade > other_student.grade
    end

  protected

  	def grade
       @grade
  	end
end

chris = Student.new("Chris", 70)
amanda = Student.new("Amanda", 94)
puts "Well done!" if amanda.better_grade_than?(chris)