class InvalidScore < ArgumentError
  def initialize(msg = "Invalid Score. Please enter an integer.")
    super
  end
end


def get_letter_grade(integer)

  if integer != "0" and integer.to_i == 0
    raise InvalidScore
  end

  percentageGrade = integer.to_i

  case percentageGrade
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  when 0..59
    "F"
  end
end

def shortest_string(array)

  shortString = array.min_by {|a| a.length }

end



### Don't touch anything below this line ###

p "Fetch Letter Grade: You should have 2 trues"
p get_letter_grade(89) == "B"
p get_letter_grade(73) == "C"
p
p "Shortest String: You should have 3 trues"
p shortest_string(["touch","this", "car"]) == "car"
p shortest_string([]) == nil
p shortest_string(["can", "a", "solve", "Find", "solution"]) == "a"
