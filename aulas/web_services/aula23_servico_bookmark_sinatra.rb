require "sinatra"
require "rexml/document"
include REXML
#Implementação de serviço REST
#Utiliz a biblioteca Sinatra, que é uma dependênica
#Para instalar o sinatra
#gem install sinatra


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