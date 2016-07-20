class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb 'annyeong'
  end

  get '/users' do
    @users = User.all
    erb :'users'
  end

end
