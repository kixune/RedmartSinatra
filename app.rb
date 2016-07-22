class RedmartSinatraApp < Sinatra::Base

  get '/' do
    erb 'annyeong'
  end

  #get all users
  get '/users' do
    @users = User.all
    erb :'/users/index'
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
    @new_user.save ? (redirect("/users")) : (erb :'users/new')
    # if @new_user.save
    #    redirect("/users")
    #  else
    #    erb :'users/new'
    # end
  end

  #put user (update information)
  put 'users/:id' do
    @update_user = User.find(params[:id])
    @update_user.update_attributes(params[:user]) ? (redirect("/users"))
    : (erb :"/users/#{@update_user}")
  end

  #destroy user
  delete 'users/:id' do
    @delete_user = User.find(params[:id])
    @delete_user.destroy ? (redirect("/users")) : (erb :"/users/#{@delete_user}")
  end

end
