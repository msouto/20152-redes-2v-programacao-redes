require "socket"

#Monta a requisicao HTTP
request = "GET / HTTP/1.1\r\n"
request += "Host: portal.ifrn.edu.br\r\n"
request += "\r\n"

#Abre socket e envia requisicao
socket = TCPSocket.new('portal.ifrn.edu.br', 80)
socket.print(request)

#Lê e interpreta resposta
response_line = socket.gets
codigo_status = response_line.split[1].to_i
if codigo_status == 200
  while header = socket.gets
    if header.chomp != ""
      puts header.chomp
      if header.start_with?("Content-Length:")
        content_length = header.split[1].to_i
      end
    else
      break
    end
  end
  payload = socket.read(content_length)
  file = File.new("out.html", "w")
  file.write(payload)
  file.close
else
  puts "Status da resposta diferente de 200: #{codigo_status}"
end

socket.close