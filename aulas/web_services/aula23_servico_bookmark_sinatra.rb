require "sinatra"
require "rexml/document"
include REXML
#Implementação de serviço REST
#Utiliz a biblioteca Sinatra, que é uma dependênica
#Para instalar o sinatra
#gem install sinatra

#variveis globais
$contador = 1
$usuarios = Hash.new

class Usuario
	attr_accessor :nome, :links

	def initialize(nome)
		@nome= nome
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

#porta padrão do sinatra 4567
get '/' do
	'Olá Mundo!'
end

get '/usuario/:id' do
	id_usuario = params[:id]
	usuario = $usuarios[id_usuario.to_i]
	if usuario.nil?
		status 404
	else
		status 200
		content_type 'text/xml'
		"<?xml version='1.0'?><usuario nome='#{usuario.nome}'/>"
	end
end

put '/usuario' do
	#Codigo de tratamento para criação dos usuários
end