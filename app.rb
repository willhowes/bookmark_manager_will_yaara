require 'sinatra/base'
require './lib/bookmark'


class BookmarkManager < Sinatra::Base

  enable :sessions, :method_override

  get '/' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/'
  end
  run! if app_file == $0
end
