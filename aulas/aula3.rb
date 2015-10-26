frase = 'Goiaba'
puts frase
puts frase.upcase
puts frase.downcase
puts frase.empty?
puts frase.size

frase2 = 'Produto1;50;Produto2;30;Produto3;40;Produto1;50;Produto2;30;Produto3;40'
frase3 = frase2.split(';')
puts frase3[0]

puts '============================'
puts 'Solução de Cirios(+0,25) e Kevin (+0,25)'
puts '============================'
for i in (0..frase3.size-1).to_a do
  if(i%2==0) then
    puts "%s = %s" % [frase3[i], frase3[i+1]]
  end
end 
puts '============================'
puts 'Solução de Maria Duciele (+0,5)'
puts '============================'

for i in 0..frase3.size do
  if frase3[i].to_i <= frase3.size-1 then
    if frase3[i].to_i%2 == 0 then 
      puts frase3[i].to_s + ' ' + frase3[i+1].to_s
    end
  end
end

#Como faço para separar em umavetor, pelo caracter ;