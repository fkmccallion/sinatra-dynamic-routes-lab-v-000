require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @backward_name = params[:name]
    "#{@backward_name.reverse!}"
  end

end
