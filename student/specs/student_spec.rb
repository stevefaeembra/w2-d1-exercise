# bank_account_spec.rb
require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def test_make_student
    student = Student.new("Steven","E26")
    assert_equal("Steven", student.name)
  end

  def test_get_cohort
    student = Student.new("Steven","E26")
    assert_equal("E26", student.cohort)
  end

  def test_set_student
    student = Student.new("Steven", "E26")
    student.name = "Cat"
    assert_equal("Cat", student.name)
  end

  def test_set_cohort
    student = Student.new("Steven", "E26")
    student.cohort = "G8"
    assert_equal("G8", student.cohort)
  end

  def test_talk
    student = Student.new("Steven", "E26")
    #student.talk
    assert_equal("I can talk", student.talk)
  end

  def test_fave_language
    student = Student.new("Steven", "E26")
    assert_equal("I love Python", student.say_favourite_language("Python"))
  end

end
