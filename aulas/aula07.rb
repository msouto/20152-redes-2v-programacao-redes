begin
  x=0
  y=5/x #codigo que pode conter condição de erro
rescue Exception
  y=5 #codigo de tratamento caso ocorra exceção
end  
puts y