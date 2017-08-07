require("minitest/autorun")
require_relative("./classes_lab_student")

class TestStudent < MiniTest::Test

  def test_student_name
    student = Student.new( "Ryan", 15, "HTML" )
    student.student_name
    assert_equal( "Ryan", student.student_name )
  end

  def test_cohort
    student = Student.new( "Ryan", 15, "Ruby")
    student.cohort
    assert_equal( 15, student.cohort)
  end

  def test_change_name
    student = Student.new( "Ryan", 15, "Java" )
    student.change_name
    assert_equal( "Bob", student.change_name)
  end

  def test_change_cohort
    student = Student.new( "Ryan", 15, "Javascript" )
    student.change_cohort
    assert_equal(10, student.change_cohort)
  end

  def test_talk
    student = Student.new( "Ryan", 15, "Python" )
    student.talk
    assert_equal("I can talk", student.talk)
  end

  def test_language
    student = Student.new( "Ryan", 15, "C++" )
    student.language
    assert_equal("I like C++", student.language )
  end


end
