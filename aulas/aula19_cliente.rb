require 'socket'
sock = TCPSocket.new('localhost', 2000)
begin
  nome_arquivo = gets.chomp
  arquivo = File.new(nome_arquivo, "r")
  tamanho = File::size(nome_arquivo)
  bytes_arquivo = arquivo.read(tamanho)
  sock.puts(nome_arquivo)
  sock.puts(tamanho.to_s)
  sock.syswrite(bytes_arquivo)
ensure
  sock.close
  arquivo.close
end

