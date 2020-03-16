require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_a.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test

  def test_get_student_name()
    student = Student.new("mark", "G-18")
    assert_equal("mark", student.get_student_name())
  end

  def test_get_student_cohort()
    student = Student.new("mark", "G-18")
    assert_equal("G-18", student.get_student_cohort())
  end

  def test_set_student_name()
    student = Student.new("mark", "G-18")
    assert_equal("Dave", student.set_name("Dave"))
  end

  def test_set_student_cohort()
    student = Student.new("mark", "G-18")
    assert_equal("G-20", student.set_cohort("G-20"))
  end

  def test_student_can_talk()
    student = Student.new("Mark", "G-18")
    assert_equal("I can talk!", student.talk())
  end

  def test_students_favorite_language()
    student = Student.new("Mark", "G-18")
    assert_equal("I love Ruby!", student.favorite_language("Ruby"))
  end

end
