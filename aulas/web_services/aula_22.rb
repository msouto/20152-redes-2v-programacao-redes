require "net/http"

#Implementação de programa cliente que acessa um serviço REST.
#O acesso é feito através de uma requisição HTTP utilizando 
#a biblioteca net/http do Ruby, a qual faz parte da API padrão.

#Envia requisição GET ao serviço
response = Net::HTTP.get_response(URI('http://freegeoip.net/json/'))

#Imprime corpo da resposta HTTP
puts response.body
