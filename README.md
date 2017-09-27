# Point Of Sale

#### _Recipe Box_

#### By Safiy Cham & L. Devin MacKrell

## Description

_An app for a the user to collect their favorite recipes and order them by ranking and search by ingredients built using Ruby and ActiveRecord._

## Setup/Installation Requirements

* Clone this repository at [github.com/MackLess/point_of_sale](https://github.com/MacKLess/recipe_box.git)
* Ensure you have Postgres installed and running ([instructions here](https://www.learnhowtoprogram.com/ruby/ruby-database-basics/installing-postgres-7fb0cff7-a0f5-4b61-a0db-8a928b9f67ef))
* Create a database ```recipe_box_development``` by running the command ```createdb -T template0 recipe_box_development```
* Run the command ```psql recipe_box_development < my_database.sql``` in the project root directory
* Run the command ```ruby app.rb``` in the project root directory
* Open ```localhost:4567``` in your web browser

## Specifications

* User can add, view, edit, and delete recipes.
* User can add, edit, and remove a tags for recipes.
* User can rate recipes from favorites to least favorites.
* User can search for recipes based on ingredients.

## Support and contact details

_Please contact [csafi13@yahoo.com](mailto:csafi13@yahoo.com) or [ldmackrell@gmail.com](mailto:ldmackrell@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Sinatra
* Postgres
* ActiveRecord

### License

Copyright (c) 2017 **Safiy Cham & L. Devin MacKrell**

*This software is licensed under the MIT license.*
