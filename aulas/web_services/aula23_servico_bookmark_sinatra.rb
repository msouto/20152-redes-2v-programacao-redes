require "sinatra"
require "rexml/document"
include REXML

#Implementação de serviço REST.
#Utiliza a biblioteca biblioteca Sinatra, a qual deve ser instalada previamente: 
# gem install sinatra

#Utiliza 4567 como porta padrão
get '/' do
  'Hello world'
end

get '/usuario/:id' do
  id_usuario = params[:id]
  usuario = $usuarios[id_usuario.to_i]
  if usuario.nil?
    status 404
  else
    status 200
    content_type 'text/xml'
    "<?xml version='1.0' ?><usuario nome='#{usuario.nome}'/>"
  end
end

put '/usuario' do
  doc = Document.new(request.body.string)
  nome = doc.elements[1].attributes["nome"]
  if nome.nil?
    status 404
  else
    usuario = Usuario.new(nome)
    $usuarios[$contador] = usuario
    puts ">>> Usuario criado com ID #{$contador}"
    $contador += 1
    status 200
  end
end

class Usuario
  attr_accessor :nome, :links
  
  def initialize(nome)
    @nome = nome
    @links = Hash.new
    @contador = 1
  end
  
  def adicionar_link(url)
    @links[@contador] = url
    @contador += 1
  end
  
  def remover_link(id_link)
    @links.delete(id_link)
  end
end

#inicializa variáveis globais
$contador = 1
$usuarios = Hash.new