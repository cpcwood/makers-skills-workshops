require 'sinatra/base'
require_relative "./struggle_table_flipper"
require_relative "./random_happy_emoji"

class StruggleTableFlipperApp < Sinatra::Base

  get '/' do
    @emoji =  RandomHappyEmoji.new
    erb :index
  end

  post "/flipped_struggle" do
    @flipped_struggle = StruggleTableFlipper.new(params[:struggle]).flipped_struggle
    erb :flipped_struggle
  end

  run! if __FILE__ == $0
end
