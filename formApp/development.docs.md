## Creating a view connected to a database and a controller
- Create the model:
rails g model LandRegularization
- edit the file created on 'db/migrate'
- run migration: 
rails db:migrate
- create the controller:
rails g controller LandRegularization new create
- edit the file created on 'app/controllers/land_regularization_controller.rb'
- create the view file in 'app/views/land_regularizations/new.html.erb'

## this will generate the controller file and the index view file
- rails generate controller Locations index
### view created at
app/views/locations/index.html.erb
