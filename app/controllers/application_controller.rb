require 'bundler'
Bundler.require
require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end

  
  get '/wouldyourather' do
    return erb :wouldyourather 
  end
  
  post '/results' do
    Responder = Rather.new(params)
    @answer =Responder.results
    puts params
    erb :results
  end
  
 get '/ant' do 
   erb :ant
 end 
 get '/cat' do 
   erb :cat
 end 
 get '/dog' do 
   erb :dog
 end 
 get '/duck' do 
   erb :duck
 end 
 get '/frog' do 
   erb :frog
 end 
 get '/lion' do 
   erb :lion
 end 
 get '/monkey' do 
   erb :monkey
 end 
 get '/mouse' do 
   erb :mouse
 end 
 get '/parrot' do 
   erb :parrot
 end 
 get '/rabbit' do 
   erb :rabbit
 end 
 get '/wolf' do 
   erb :wolf
 end 
 get '/animalquiz' do
    erb :animalquiz
 end 
  post '/animalresults' do
    answers = params.values
    @user_input = Array.new 
    answers.each do |answers|
    @user_input.push(answers) 
    end 
    
    @animals = animalresults(@user_input)
    if @animals =="Rabbit"
      erb :rabbit
    elsif @animals == "Dog"
      erb :dog
    elsif @animals == "Cat"
      erb :cat
    elsif @animals == "Duck"
      erb :duck
    elsif @animals == "Parrot"
      erb :parrot
    elsif @animals == "Lion"
      erb :lion
    elsif @animals == "Wolf"
      erb :wolf
    elsif @animals == "Mouse"
      erb :mouse
    elsif @animals == "Frog"
      erb :frog
    elsif @animals == "Monkey"
      erb :monkey
    else @animals == "Ant"
      erb :ant
    end
  
  # get '/respond' do
  #   erb :respond
  # end
  
end
end
