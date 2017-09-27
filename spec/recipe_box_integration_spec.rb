require 'capybara/rspec'
require './app'
require 'spec_helper'

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'adding recipes to the mainpage', {:type => :feature} do
  it 'allows the user to add a recipe to the mainpage' do
    visit('/')
    fill_in('name', :with => 'scones')
    fill_in('ingredients', :with => "['2.5 cups all-purpose flour', '1 Tbspoon baking powder', '0.5 teaspoon salt', '8 tablespoons cold unsalted butter, cut up', '1/4 cup', '2/3 cup milk']")
    fill_in('instructions', :with => 'Heat oven to 425 degrees F (220 Celsius). Put flour, baking powder and salt into a large bowl; stir mix well. Add butter and cut in with a pastry blender or rub in with your fingers, until the mixture looks like fine crumbs.')
    click_button('Submit')
    expect(page).to have_content('scones')
  end
end

# describe 'access recipe detail page', {:type => :feature} do
#   it 'click on recipe name to link to detail page' do
#     recipe1 = Recipe.create({:name => 'scones', :ingredient => ['2.5 cups all-purpose flour', '1 Tbspoon baking powder'], :instruction => 'Heat oven to 425 degrees F (220 Celsius).', :id => nil})
#     visit('/recipes')
#     click_link(recipe1.name)
#     expect(page).to have_content(recipe1)
#   end
# end
