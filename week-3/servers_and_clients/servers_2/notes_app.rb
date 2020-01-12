require 'socket'
require_relative 'notes'

server = TCPServer.new(2345)

socket = server.accept

notebook = Notes.new

options = "Enter: 'quit' to exit session\nEnter: 'view' to see notebook entries\nEnter: 'add' to add entry to notebook\nEnter: 'delete' to remove entry to notebook\nEnter: 'options' to see this list again"

socket.puts options

loop do
  socket.puts "What do you say?"
  they_said = socket.gets.strip

  case they_said
  when 'quit'
    break
  when 'view'
    socket.puts notebook.show_notes
  when 'add'
    socket.puts 'Enter note to add'
    note = socket.gets.strip
    notebook.add_note(note)
    socket.puts "#{note} -> added to notebook"
  when 'delete'
    socket.puts notebook.show_notes
    socket.puts 'Enter number of note to delete'
    number = socket.gets.strip.to_i
    notebook.delete_note(number)
    socket.puts "#{number} -> deleted from notebook"
  when 'options'
    socket.puts options
  else
    socket.puts "Sorry that input wasn't recognized"
  end
end

socket.close
