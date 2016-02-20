require 'socket' 
def processar(linha)
  tokens = linha.split
  if tokens[0] == 'soma' 
    return tokens[1].to_f + tokens[2].to_f
  elsif tokens[0] == 'raiz_quadrada'
    return Math.sqrt(tokens[1].to_f)
  else
    return 'Mensagem invalida'
  end
end
serverSocket = TCPServer.new(2000)
puts 'Servidor calculadora iniciado'
loop {
  clientSocket = serverSocket.accept
  while linha = clientSocket.gets
	  resposta = processar(linha)
	  clientSocket.puts(resposta) 
  end
  clientSocket.close
}


