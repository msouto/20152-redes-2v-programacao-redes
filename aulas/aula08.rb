f = File.new("arquivo_aula08.txt")
begin
  while f.eof? == false do
    v = f.gets.chomp.to_i
    puts 10 / v
  end
rescue Exception => e
  puts e
ensure
  f.close
  puts "=>Arquivo fechado"
end
