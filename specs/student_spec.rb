require('minitest/autorun')
require('minitest/reporters')
require_relative('../student')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestStudent < MiniTest::Test
  def setup
    @student = Student.new("Shaheen", "G17")
  end

  #Test GETTERS
  def test_get_name
    assert_equal('Shaheen', @student.name)
  end

  def test_get_cohort
    assert_equal('G17', @student.cohort)
  end

  #Test Setters
  def test_set_name
    @student.name = "Emma"
    assert_equal("Emma", @student.name)
  end

  def test_set_cohort
    @student.cohort = "G17"
    assert_equal("G17", @student.cohort)
  end
# methods
 def test_student_talk
   value = @student.student_talk()
   assert_equal("My name is Shaheen", value)
 end
def test_say_favourite_language
  value = @student.say_favourite_language("Ruby")
  assert_equal("I love Ruby", value)
end

end
