require 'sinatra/base'

require './controllers/ApplicationController'
require './controllers/HomeController'
require './controllers/FruitsController'

require './models/Fruit'

### app.use('/', FruitController)
map('/') {run ApplicationController}
map('/home') { run HomeController }
map('/fruits') { run FruitController }
