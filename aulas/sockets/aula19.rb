require 'socket'
serverSocket = TCPServer.new(2000)
clientSocket = serverSocket.accept
begin
  nome_arquivo = clientSocket.gets.chomp
  tamanho_arquivo = clientSocket.gets.chomp.to_i
  bytes_arquivo = clientSocket.read(tamanho_arquivo)
  arquivo = File.new("copia_#{nome_arquivo}", "wb")
  arquivo.syswrite(bytes_arquivo)
ensure
  serverSocket.close
end

