class FizzBuzz
  def play(number)
    p number
    string = ""
    string << "Fizz" if is_divisible_by?(3, number)
    string << "Buzz" if is_divisible_by?(5, number)
    string.empty? ? number : string
  end

  private

  def is_divisible_by?(divis0r, number)
    number % divis0r == 0
  end
end
