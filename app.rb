require 'sinatra'
require_relative 'isbn.rb'

enable :sessions

get '/' do
  erb :isbn_input
end

post '/check_isbn' do
  isbn_arr = []
  valid_arr = []
  params['isbn_list'].each_line do |isbn|
    isbn_arr << isbn.strip
    if valid_isbn?(isbn.strip)
      valid_arr << "green"
    else
      valid_arr << "red"
    end
  end
  puts "Isbnarr: #{isbn_arr}"
  session[:list] = isbn_arr || []
  session[:valid_list] = valid_arr

  redirect '/valid_results'
end

get '/valid_results' do
  p session
  erb :isbn_result, locals: {isbns: session[:list], valids: session[:valid_list]}
end