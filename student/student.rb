class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    "I can talk"
  end

  def say_favourite_language(language)
    "I love #{language}"
  end

end
