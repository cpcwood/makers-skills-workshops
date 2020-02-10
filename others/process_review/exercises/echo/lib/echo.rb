
class Echo
  def ask_user_for_input
    STDOUT.puts 'Say something:'
  end

  def get_user_input
    STDIN.gets
  end

  def response(input)
    puts "#{Time.new.strftime('%F')} | #{Time.new.strftime('%H:%M')} | You said: '#{input}'!"
  end

  def exit?(input)
    return (input == 'exit' ? true : false)
  end

  def run
    loop do
      ask_user_for_input
      input = get_user_input
      break if exit?(input)
      response(input)
    end
    puts 'Goodbye!'
  end
end