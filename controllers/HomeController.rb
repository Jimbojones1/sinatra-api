class HomeController < ApplicationController

   get '/' do
    # @name = 'barry'
    # @some_hash = {
    #   Larry: 'David',
    #   Jerry: 'SeinSmelled'

    ## send back a hash as json
    # erb :Home
  end

  post '/' do



  end

  put '/' do
    params.to_json
  end

  delete '/' do
    'hi im delete'
  end
end
