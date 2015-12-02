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

