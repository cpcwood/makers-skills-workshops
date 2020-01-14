class Greeter
  def initialize(kernel, stdout)
    @kernel = kernel
    @stdout = stdout
  end

  def greet
    puts "What is your name?"
    name = @kernel.gets.chomp
    puts "Hello, #{name}"
  end
end
