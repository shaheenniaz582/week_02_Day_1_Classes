class Student
  attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end

def get_name
  return @name
end

def get_cohort
  return @cohort
end

def set_name
  @name = "Emma"
end

def set_cohort
  @cohort = "G17"
end

def student_talk
  if @name == "Shaheen"
    return "My name is Shaheen"
  end
end

def say_favourite_language(value)
  return ("I love #{value}")
end

end
