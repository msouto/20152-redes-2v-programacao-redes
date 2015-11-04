v = [1, 0 , 'x']
v.each do |i|
  begin
    puts 3 / i
  rescue ZeroDivisionError #Tratamento no caso de exeção específica de divisão por zero
    puts "Divisao por zero"
  rescue Exception => ex #Tratamento no caso de exeção genérica
    puts ex
  end
end
