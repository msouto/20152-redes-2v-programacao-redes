#Arquivo de aula 09 - Programação para redes - 2015.2
#Usando streams
io = IO.new(STDOUT.fileno, "w")
io.print "Bom dia"


#foreach(nome_arquivo){}: permite a definição de um bloco de código a ser executado a cada linha do arquivo. O exemplo abaixo imprime todas as linhas dos arquivo soneto.txt.
IO.foreach("aula09_soneto.txt"){ |linha| 
	puts linha
}
