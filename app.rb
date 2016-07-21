class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb '<h1>annyeong</h1>'
  end

  get '/users' do
    @users = User.all
    erb :'users'
  end

end
