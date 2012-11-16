Papertrail: Active Record Versions
=========


How to Setup this application:

1. Create the database and run the migration.
2. Run rails s



Papertrail:

USAGE: PaperTrail lets you track changes to your models' data. It's good for auditing or versioning. 



Step1 : Included this 'papertrail' in the gemfile and bundle install

Step2: 
rails g paper_trail:install and run migration (rake db:migrate)

Step 3:
In Model, you can define the papertrail 
class Product < ActiveRecord::Base
  has_paper_trail
end

Step4:

Versions can be fetch using: 
product = Product.first
product.versions  #will display all the version of the particular record
version.reify  # Returns the product restored from this version.
version.whodunnit # Returns who changed the state.
