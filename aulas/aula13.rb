#Exemplo 1: convertendo um valor inteiro menor do que 256 
#para BinaryString. A diretiva C informa que o valor 
#a ser convertido é um inteiro de 8 bits sem sinal.
bs = [105].pack('C')

#Exemplo 2: convertendo bs para Array. Como bs contém 
#apenas 1 byte, o array resultante possui apenas um 
#elemento.
a = bs.unpack('C')
puts a.size        #=> 1
puts a[0]          #=> 105

#Exemplo 3: convertendo três inteiros menores do que 256 
#para BinaryString. Como o array possui 3 elementos, 
#há três ocorrências da diretiva C, produzindo uma 
#BinaryString com 3 bytes (3 caracteres).
bs = [89, 250, 5].pack('CCC');

#Exemplo 4: convertendo bs para array. Cada byte será convertido 
#individualmente para um inteiro, por isso a diretiva ocorre 
#3 vezes.
puts bs.unpack('CCC').to_s    #=> [89 250 5]

#Exemplo 5: convertendo um inteiro maior do que 255 e menor 
#do que 65536 (2^16). Neste caso, a conversão deve gerar 2 
#bytes. A diretiva n indica que a resultado deve ser uma 
#sequência de 16 bits em network byte order (big endian).
bs = [10500].pack('n')
puts bs.size            #=> 2

#Exemplo 6: processo inverso. Devemos utilizar a mesma ordenação 
#de bits, ou seja, network byte order. Neste caso, os dois bytes 
#de BS irão gerar um array contendo apenas um elemento, por isso 
#há apenas uma ocorrência da diretiva c.
a = bs.unpack('n')
puts a.size           #=> 1
puts a[0]             #=> 10500


