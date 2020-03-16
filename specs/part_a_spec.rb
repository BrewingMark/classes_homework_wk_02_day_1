require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_a.rb')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestBankAccount < MiniTest::Test

  def test_get_student_name()
    student = Student.new("mark", "G-18")
    assert_equal("mark", student.get_student_name())
  end

end
