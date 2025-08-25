# Project structure:
author_book_management_system/
├── app/
│   ├── controllers/
│   ├── models/
│   └── views/
├── config/
│   ├── database.yml
│   └── routes.rb
├── db/
│   ├── migrate/
│   └── seeds.rb
└── Gemfile

# Create the Rails App
rails new author_book_management_system --database=mysql
cd author_book_management_system

# Add mysql2 and pg gems to your Gemfile:
gem 'mysql2'
gem 'pg'

# Run 
bundle install

# Generate Models:
rails generate model Author first_name:string last_name:string
rails generate model Book title:string year:integer author:references
rails db:create db:migrate

# Create Controllers:
rails generate controller Authors
rails generate controller Books

# Run the Server:
rails server