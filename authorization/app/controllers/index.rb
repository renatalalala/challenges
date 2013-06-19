enable :sessions

get '/' do

  erb :index
end

#----------- SESSIONS -----------

get '/sessions/new' do
  erb :sign_in
end

post '/sessions' do
  user = User.find_by_email(params[:email])
  
  if user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end

delete '/sessions/:id' do
  session.clear
end

#----------- USERS -----------

get '/users/new' do
  erb :sign_up
end

post '/users/new' do
  User.create(params[:user])
  redirect '/'
end
