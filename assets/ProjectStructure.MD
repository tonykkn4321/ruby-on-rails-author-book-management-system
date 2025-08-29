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
ruby '3.4.5'
gem 'rack', '~> 3.2'
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

# For Railway:
gem install bundler -v 2.7.1
bundle lock --add-platform x86_64-linux

# Generate a secure key:
rails secret
f7eef5e4be282f9ff507e179159191eb4e76c34d209759744e066d2a8de93c879cd352a7a953e868433c0d5c63b99bbebefdbae6cb2b83373b8a49d0c7f70c3f

# Custom start command:
bash -c 'bundle exec rails server -b 0.0.0.0 -p $PORT'

# Moving files:
app/initializers/cors.rb move to config/initializers/cors.rb


