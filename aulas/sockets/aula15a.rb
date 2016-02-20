require 'socket'

# Abre socket servidor TCP na porta 2000
serverSocket = TCPServer.new(2000)
puts 'Servidor iniciado'
loop{
	# Aguarda e aceita requisição cliente
	clientSocket = serverSocket.accept
	puts 'Aceitando conexao'
	# Lê mensagem do cliente
	nome = clientSocket.gets.chomp
	# Envia uma resposta para o cliente
	clientSocket.puts('Ola ' + nome + '!') 
	# Fecha a conexão com cliente
	clientSocket.close
}
# Fecha socket servidor
serverSocket.close
