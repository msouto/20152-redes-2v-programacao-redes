require 'socket'
hostname = 'localhost'
port = 2000
threads = []  #armazena as threads que serão criadas
inicio = Time.now #Inicio da marcação do tempo
for i in 1..5 do
  #cria thread que solicita uma nova conexão com o servidor  
  #cada thread funciona como um programa cliente
  t = Thread.start(TCPSocket.new(hostname, port)) do |socket|
    socket.puts('msg')
    puts socket.gets
    socket.close
  end
  threads << t #adiciona a thread ao array
end
#avisa este programa para aguardar até que todas as threads
#tenham terminado sua execução
threads.each do |t|
  t.join
end
fim = Time.now #Final da marcação do tempo
#calcula e imprime o tempo de execução
puts "#{fim - inicio} s"
