t = Time.new(2012, 8, 22)   #Criando instância da classe time atribuindo data
puts t                      #2012-08-22 00:00:00
puts t + 60                 #2012-08-22 00:01:00
umdia = 60*60*24
ummes = 30 * umdia
puts t - umdia              #2012-08-21 00:00:00
puts t - ummes              #2012-07