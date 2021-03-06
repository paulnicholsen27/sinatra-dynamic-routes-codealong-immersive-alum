require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do 
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get "/multiply/:param1/:param2" do 
    @first = params[:param1].to_i
    @second = params[:param2].to_i
    erb :multiply
  end
end