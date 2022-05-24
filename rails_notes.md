#  ============= CREATING RAILS APP ==================
## 1. Create Rails App:
- `rails new app_name -d postgresql -T`
## 2. Change directory to newley created app
- `cd app_name`
## 3. create app database
- `rails db:create`
- `rails db:drop` removes database.
## 4. start Rails server
- rails server `#http://localhost:3000` or `127.0.0.1:3000`

# ============= CREATING MODELS ===================
## 5. Generate Model 
- `rails generate model Person first_name:string last_name:string phone:string`
## 6. Migrate DataBase
- `rails db:migrate`
## 7. Rails server console
- `rails c`
## 8. Find by last name:
- `Person.where last_name: "Duncan"`
# ============= UPDATING DATABASE =====================
## 9. create variable associated with ID
- `rowan = Person.find 6`  // 6 is last entry
## 10. then name.key = value
- `rowan.phone = "404-222-2222"`
## Then save to make changes
- `rowan.save`
## Alternatively... 
- `rowan.update phone:"770-555-5555"` 
  - This does not require save

# =========== Migrating Database =======================
## useful commands
- `rails generate migration action_name_here`
- `rails db:migrate`
- `add_column :table_name, :column_name, :datatype`
- `change_column :table_name, :column_name, :datatype`
- `rename_column :table, :old_column, :new_column`
- `remove_column :table_name, :column_name`
- Create a migration to add a new column to the database called movie_length
- Update the values of the five existing attributes to include a movie_length value
- Generate a migration to rename the column 'category' to 'genre'