get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/event/create' do
  erb :new_event
end

post '/event/create' do
@event = Event.create(params[:event])
  if @event.errors.messages.length > 0
  	@errors = @event.errors.full_messages
  	erb :new_event
  else
  	redirect '/'
	end
end
