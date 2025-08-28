# Project structure:
ruby-on-rails-author-book-management-system/
├── app/
│   ├── controllers/
│   │   ├── authors_controller.rb
│   │   └── books_controller.rb
│   ├── models/
│   │   ├── author.rb
│   │   └── book.rb
│   ├── views/
│   └── serializers/
├── config/
│   ├── database.yml
│   ├── routes.rb
│   └── initializers/
│       └── cors.rb
├── db/
│   ├── migrate/
│   └── seeds.rb
├── Gemfile
└── Rakefile

# Create the Rails App
rails new author_book_management_system --database=mysql
cd author_book_management_system

# Add mysql2 and pg gems to your Gemfile:
gem 'mysql2', '0.5.6'  # Adjust as necessary
gem 'pg', '>= 1.2'  # For production on Railway
gem 'rack-cors', require: 'rack/cors'  # For CORS support


# To install depedencies:
bundle install

# To connect to my localhost mysql
gem uninstall mysql2
gem install mysql2 -v '0.5.6' -- --with-mysql-config="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql_config"
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