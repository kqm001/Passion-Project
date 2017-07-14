get '/login' do
  erb :'sessions/new'
end

post '/login' do
  user = User.find_by(email: params[:user][:email])
  if user
    if user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/'
    else
      @errors = ["Incorrect Username or Password"]
      erb :'sessions/new'
    end
  else
    status 422
    @errors = ["Input Username or Password"]
    erb :'sessions/new'
  end
end

get '/logout' do
  session.destroy
  redirect '/'
end
