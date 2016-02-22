require 'net/http' 
resposta = Net::HTTP.get_response('www.ifrn.edu.br', '/') 
if resposta.code == '200'
 resposta.header.each_header do |campo,valor|
  puts "#{campo}: #{valor}" 
 end 
 file = File.new("out.html", "w") 
 file.write(resposta.body) 
 file.close 
else 
 puts "Status da resposta diferente de 200: #{resposta.code} " 
end
