get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/urls' do
  unless Url.ping(params[:long_url]) == 404
    Url.create(title: params[:title], long_url: params[:long_url])
    redirect '/'
  else
    @error = true
    erb :index
  end
end

# e.g., /q6bda
get '/:short_url' do
  @url = Url.find_by_short_url(params[:short_url])
  @click = @url.click_count + 1
  Url.update(@url.id, click_count: @click)
  redirect @url.long_url
end