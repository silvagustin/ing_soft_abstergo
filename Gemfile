source 'https://rubygems.org'

# Usamos 'dragonfly' para subir imagenes al sitio
# http://markevans.github.io/dragonfly/rails/
gem 'dragonfly', '~> 1.0.7'

# Utiliza NoamB/sorcery para manejar las sesiones de usuario
# https://github.com/NoamB/sorcery
gem 'sorcery'

# Usamos 'cancan' para administrar los permisos de los usuarios
# https://github.com/ryanb/cancan
gem 'cancan'

# Usamos Hirb para poder visualizar mejor las db
gem 'hirb'
# Usamos rspec para probar los modelos
group :development, :test do
  gem 'rspec-rails','~> 3.0.0'
  gem 'letter_opener'
  gem 'quiet_assets'
end
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.6'

# Usamos postgress por compatibilidad con heroku
group :production do
 gem 'pg'
end
#Usamos sqlite3 para desarrollo y testeo
group :development, :test do
 gem 'sqlite3'
end

# Use Bootstrap-sass for styles
gem 'bootstrap-sass', '~> 3.3.0.1'

# It is also recommended to use Autoprefixer with Bootstrap to add browser
# vendor prefixes automatically
gem 'autoprefixer-rails'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

#Validar la URL de la foto
gem 'validate_url'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]