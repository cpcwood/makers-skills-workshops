class Calculator
  #Understands two integers and performs mathematical operation on them
  def add(number_1, number_2)
    number_1 + number_2
  end

  def subtract(number_1, number_2)
    number_1 - number_2
  end
end

class Print
  #Understands string and prints in pretty format
  def answer(answer)
    "The Answer is: #{ answer }"
  end
end
