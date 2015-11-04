begin
  x=0
  y=5/x #codigo que pode conter condição de erro
rescue Exception => ex #Atribuição de objeto de tratamento de erro
  y=5 #codigo de tratamento caso ocorra exceção
  puts ex #impressao da mensagem de exceção
end  
puts y