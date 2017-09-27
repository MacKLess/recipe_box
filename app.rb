require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}


get ('/') do
  @recipes = Recipe.all
  erb(:index)
end

post('/') do
  name = params.fetch("name")
  ingredient = params.fetch("ingredients")
  instruction = params.fetch("instructions")
  @recipes = Recipe.create({:name => name, :ingredient => ingredient, :instruction => instruction})
  @recipes = Recipe.all
  erb(:index)
end
