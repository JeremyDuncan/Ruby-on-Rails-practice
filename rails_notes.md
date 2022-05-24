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
## useful Rails commands:
- `rails generate migration action_name_here`
- `rails db:migrate`

## Use these lines in Rails_App/db/migrate/migration_action_name_here.rb
*db/migrate/migrate_action.db
```ruby
- add_column :table_name, :column_name, :datatype
- change_column :table_name, :column_name, :datatype
- rename_column :table, :old_column, :new_column
- remove_column :table_name, :column_name
```
```ruby
class AddNewColumnMovieLength < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :movie_length, :string
  end
end
```

# =========== Relationships =====================
## Types of Relationships
Rails supports six types of associations:
- belongs_to
- has_one
- has_many
- has_many :through
- has_one :through
- has_and_belongs_to_many

*app/models/person.rb*
```ruby
class Person < ApplicationRecord
  has_many :emails
end
```
Note: emails is plural

*app/models/email.rb*
```ruby
class Email < ApplicationRecord
  belongs_to :person
end
```
Note: person is singular
# ======== rspec & validation =========


```ruby
class Learnbook < ApplicationRecord
  validates :username, :email, presence: turned
  validates :username, length: { minimum: 3 }
  validates :email, length: { minimum: 10 }
  validates :email, uniqueness: true

  validate :check_at_symbol

  def check_at_symbol
    unless self.email.include? '@'
      errors.add(:email, "Must include @.")
    end
  end

end
```