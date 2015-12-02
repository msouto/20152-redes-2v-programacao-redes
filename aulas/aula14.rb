filename = "aula11_ifrn.png"
data = []
file = File.open(filename, "r")
begin
  #cabecalho de um arquivo PNG
  header = [137, 80, 78, 71, 13, 10, 26, 10] 
  ok = true
  for i in 0..7 do
    byte = file.read(1).unpack("C")[0]
    if header[i] != byte
      ok = false
      break
    end
  end
ensure
  file.close
end
if ok 
  puts "#{filename} eh um arquivo PNG."
elsif
  puts "#{filename} nao eh um arquivo PNG."
end

