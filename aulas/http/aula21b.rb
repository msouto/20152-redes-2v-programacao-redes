require 'net/http' 
http = Net::HTTP.new('portal.ifrn.edu.br') 
requisicao = Net::HTTP::Get.new('/') 
requisicao['Accept-Language'] = 'en-US' 
resposta = http.request(requisicao) 
puts "#{resposta.code} #{resposta.msg}" 
file = File.new("out3.html", "w") 
file.write(resposta.body) 
file.close

