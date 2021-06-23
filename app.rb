require 'sinatra/base'
require_relative './lib/bookmark'

class BookmarkManager < Sinatra::Base

    attr_reader :url

    enable :sessions, :method_override

    get '/' do
      "Hello World!"
    end

    get '/bookmarks' do
      @bookmarks = Bookmark.all
      erb :"bookmarks/bookmarks"
    end

    post '/bookmarks' do
      Bookmark.create(url: params[:url], title: params[:title])
      redirect '/bookmarks'
    end

    get '/bookmarks/add' do
      erb :"bookmarks/add"
    end

    delete '/bookmarks/:id' do
      Bookmark.delete(id: params[:id])
      redirect '/bookmarks'
    end

    run! if app_file == $0
end
