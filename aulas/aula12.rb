nome_arquivo = "aula11_ifrn.png"
f1 = File.new(nome_arquivo, "r")

puts File::size(nome_arquivo)
qtd_bytes = File::size(nome_arquivo)
bytes = f1.read(qtd_bytes)
f1.close	

f2 = File.new("copia_#{nome_arquivo}", "w")
f2.syswrite(bytes)
f2.close

