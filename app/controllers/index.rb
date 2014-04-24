get '/' do
  @all_urls = Url.all
  erb :index
end

post '/' do
  Url.create!(url: params[:original_url])
  @all_urls = Url.all
  erb :index
end

# e.g., /q6bda
get '/:short_url' do
  url_obj = Url.find_by(short_url: params[:short_url])
  url_obj.update(click_count: url_obj.click_count + 1)
  redirect url_obj.url
end
