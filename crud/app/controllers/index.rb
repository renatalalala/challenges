get '/' do
	@notes = Note.all
  erb :index
end

get '/new' do
  erb :new
end

post '/new' do
  Note.create(params)
  redirect '/'
end

get '/update/:id' do |note_id|
	@note = Note.find(note_id)
	erb :update
end

put '/update/:id' do |note_id|
	note = Note.find(note_id)
	note.update_attributes(title: params[:title], content: params[:content])
	note.save
	redirect '/'
end

get '/delete/:id' do |note_id|
  @note = Note.find(note_id)
  erb :delete
end

delete '/delete/:id' do |note_id|
  note = Note.find(note_id).destroy
  redirect '/'
end
