require 'socket'

host = 'localhost'
port = 2000

threads = []
for i in 1..2 do
	t = Thread.start(TCPSocket.new(host,port)) do |socket|
		socket.puts('90')
		puts socket.gets
		socket.close
	end
	threads.push(t)
end
threads.each do |t|
	t.join
end