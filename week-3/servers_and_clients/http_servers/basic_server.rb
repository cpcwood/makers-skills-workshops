require 'socket'

server = TCPServer.new(2345)

loop do
  socket = server.accept
  while line = socket.gets
    socket.puts line
  end
end
