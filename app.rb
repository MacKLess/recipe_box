require 'bundler/setup'
Bundler.require(:default)
require 'pry'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}


get ('/') do
  @recipes = Recipe.all
  erb(:index)
end

post('/') do
  name = params.fetch("name")
  # ingredient = params.fetch("ingredients")
  # instruction = params.fetch("instructions")
  recipe = Recipe.create({:name => name})
  @recipes = Recipe.all
  erb(:index)
end

get('/recipes/:id') do
  @recipe = Recipe.find(params.fetch(:id).to_i)
  erb(:recipes)
end

get('/recipes/:id/edit') do
  @recipe = Recipe.find(params[:id].to_i)
  erb(:recipe_edit)
end

patch('/recipes/:id/edit') do
  @recipe = Recipe.find(params[:id].to_i)
  @recipe.update({:name => name, :ingredient => ingredient, :instruction => :instruction})
  redirect '/recipes/:id'
end

delete('/recipes/:id/delete') do
  @recipe = Recipe.find(params[:id].to_i)
  @recipe.destroy
  redirect '/'
end
