require "rexml/document"
include REXML

file = File.new("campeoes.xml")
doc = Document.new(file)

#listando as tags dos paises vencedores das copas
puts "** Tags dos paises vencedores **"
doc.elements.each("campeoes/selecao/pais") do |p|
	puts p
end

#listando os nomes do paises vencedores
puts "** Nomes dos paises vencedores **"
doc.elements.each("campeoes/selecao/pais") do |p|
	puts p.text
end

#listando as copas realizadas
puts "** Copas realizadas **"
doc.elements.each("campeoes/selecao/copas_do_mundo/copa") do |c|
	puts "#{c.attributes['ano']} - #{c.attributes['local']}"
end

#listando as copas realizadas neste século
puts "** Copas realizadas no século 21**"
doc.elements.each("campeoes/selecao/copas_do_mundo/copa[@ano>=2000]") do |c|
	puts "#{c.attributes['ano']} - #{c.attributes['local']}"
end