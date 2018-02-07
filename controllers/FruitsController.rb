class FruitController < ApplicationController


  get '/' do
    @fruits = Fruit.all

    @fruits.to_json
  end

  post '/' do
    ## if you are recieving json, if you are recieving form data it will be in Params

    ## You need to delcare a variable to load are request
    ## params from rack, rack is what sinatra is built on top of, and it features
    ## lazy loading, which means the data is only loaded when you say you need it
   payload_body = request.body.read
   payload = JSON.parse(payload_body).symbolize_keys

    # p '-----------------------'
    # p payload
    # p '-----------------------'
    ### params isn't going to work, look at (request.body.read), this is probably what
    ### you want to print in order to see what your data is
    @fruit = Fruit.new
    @fruit.name = payload[:name]
    @fruit.color = payload[:color]
    @fruit.amount = payload[:amount]
    @fruit.save

    @fruit.to_json
  end

  put '/:id' do
    p '--------------'
    p params
    p '-----------------------'
   payload_body = request.body.read
   payload = JSON.parse(payload_body).symbolize_keys

     @fruit = Fruit.find_by(id: payload[:id])
     @fruit.name = payload[:name]
     @fruit.color = payload[:color]
     @fruit.amount = payload[:amount]
     @fruit.save

     @fruit.to_json
  end

  delete '/:id' do
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.delete
    'deleted'
  end


end
