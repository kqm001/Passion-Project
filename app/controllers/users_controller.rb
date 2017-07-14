get '/users/new' do
  erb :'users/new'
end

get '/users/:id' do
  if logged_in?
    @user = User.find_by(id: session[:user_id])
    erb :'users/show'
  else
    redirect '/'
  end
end

post '/users/new' do
  user = User.create(params[:user])
  if user.valid?
    session[:user_id] = user.id
    redirect '/'
  else
    status 422
    @errors = user.errors.full_messages
    erb :'users/new'
  end
end
