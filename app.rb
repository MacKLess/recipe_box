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
  @recipes = Recipe.create({:ingredient => ingredient, :instruction => instruction, :name => name})
  @recipes = Recipe.all
  erb(:index)
end

get('/recipes/:id') do
  @recipes = Recipe.find(params.fetch(:id).to_i)
  erb(:recipes)
end
