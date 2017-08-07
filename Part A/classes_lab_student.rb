class Student

  def initialize(student_name, cohort, language)
    @student_name = student_name
    @cohort = cohort
    @language = language
  end

  def student_name
    @student_name
  end

  def cohort
    @cohort
  end

  def change_name
    @student_name = "Bob"
  end

  def change_cohort
    @cohort = 10
  end

  def talk
    return "I can talk"
  end

  def language
    return "I like #{@language}"
  end


end
