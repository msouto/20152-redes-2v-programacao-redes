require 'socket'

serverSocket = TCPServer.new(2000)
puts 'Servidor multithread iniciado'
loop {
  Thread.start(serverSocket.accept) do |clientSocket|
    msgcliente = clientSocket.gets
    #simula uma operação demorada como a gravação em disco
    sleep(2); #dorme 2 segundos
    clientSocket.puts('ok')
    clientSocket.close
  end
}

