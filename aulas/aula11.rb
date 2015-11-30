# Exemplo: cópia de arquivo em disco (versão 1)
nome_arquivo = "aula11_ifrn.png"
f1 = File.new(nome_arquivo, "r")
bytes = ""
while b = f1.read(1)
  bytes = bytes + b
end
f1.close

f2 = File.new("copia_#{nome_arquivo}", "w")
f2.syswrite(bytes)
f2.close

