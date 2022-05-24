# CREATING APP ==================
# create Rails App:
rails new app_name -d postgresql -T

# Change directory to newley created app
cd app_name

# create app database
rails db:create
  # rails db:drop removes database.

# start Rails server
rails server #http://localhost:3000 or 127.0.0.1:3000



# CREATING MODELS ================
# Generate Model 
rails generate model Person first_name:string last_name:string phone:string

# Migrate DataBase
rails db:migrate

# Rails server console
rails c

# Find by last name:
Person.where last_name: "Duncan"



# update database ===================
#link name to id
rowan = Person.find 6 # 6 is last entry

#then name.key = value
rowan.phone = "404-222-2222"

# Then save to make changes
rowan.save

