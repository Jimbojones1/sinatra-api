class FruitController < ApplicationController


  get '/' do
    @fruits = Fruit.all

    @fruits.to_json
  end

  post '/' do

    @fruit = Fruit.new
    @fruit.name = params[:name]
    @fruit.color = params[:color]
    @fruit.amount = params[:amount]
    @fruit.save

    'saved'
  end

  put '/:id' do
     @fruit = Fruit.find_by(id: params[:id])
     @fruit.name = params[:name]
     @fruit.color = params[:color]
     @fruit.amount = params[:amount]
     @fruit.save
  end

  delete '/:id' do
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.delete
    'deleted'
  end


end
