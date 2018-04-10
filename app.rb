require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @backward_name = params[:name]
    "#{@backward_name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number.to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @phrase * @number.to_i
  end

end
