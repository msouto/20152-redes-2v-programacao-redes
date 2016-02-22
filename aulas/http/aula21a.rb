require 'net/http' 
uri = URI('http://portal.ifrn.edu.br') 
resposta = Net::HTTP.get_response(uri) 
puts resposta.msg 
puts resposta.content_type 
puts resposta['Content-Length']
