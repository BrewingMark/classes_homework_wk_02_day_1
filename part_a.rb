class Student

  def initialize(student_name, cohort)
    @name = student_name
    @cohort = cohort
  end

  def get_student_name()
    return @name
  end

  def get_student_cohort()
    return @cohort
  end


end
