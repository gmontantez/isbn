require 'sinatra'
require_relative 'isbn.rb'

enable :sessions

get '/' do 
	session[:mod_num] = ""
	erb :first_page
end

post '/first_page' do
	puts params
	num = params[:num]
	session[:mod_num] = num_length(num)
	p "this is modded num"
	puts session[:mod_num]
	redirect '/second_page'
end

get '/second_page' do
	erb :second_page, locals:{mod_num: session[:mod_num]}
end

post '/second_page' do
	redirect '/redo'
end

get '/redo' do
	erb :first_page
end
