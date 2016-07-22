class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb '<h1>annyeong</h1>'
  end

  #get all users
  get '/users' do
    @users = User.all
    erb :'users'
  end

  #get form view to create new user
  get '/users/new' do
    erb :'users/new'
  end

  #get one specific user
  get '/users/:id' do
    @user = User.find(params[:id])
    erb :'users/show'
  end

  #get form view to edit an existing user
  get 'users/:id/edit' do
    @user = User.find(params[:id])
    erb :'users/edit'
  end

  #post user (creating new)
  post '/users' do
    @new_user = User.new(params[:user])
    @new_user.save ? redirect("/users") : erb :'users/new' 
  end

  #put user (update information)
  put 'users/:id' do
    @the_user = User.find(params[:id])
    @the_user.update_attributes(
      # key: "value"
    )
  end

  #destroy user
  delete 'users/:id' do
    @deleted_user = User.find(params[:id])
    @deleted_user.destroy
  end

end
