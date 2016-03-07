require "net/http"

http = Net::HTTP.new("localhost", 4567)

#cadastra usuário
request = Net::HTTP::Put.new("/usuario")
request.body = "<?xml?><usuario nome='Ana' />"
response = http.request(request)
begin
#busca usuário
request = Net::HTTP::Get.new("/usuario/1")
response = http.request(request)
puts response.body
end