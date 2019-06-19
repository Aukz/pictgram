class FavoritesController < ApplicationController

def index
  @favorites_topic = current_user.favorites_topics
end

def create
  favorite = Favorites.new
  favorite.user_id = current_user.id
  favorite.topic_id = params[:topic_id]

  if favorite.save
    redirect_to topic_path, success: 'お気に入り登録しました'
  else
    redirect_to topic_path, danger: 'お気に入り登録に失敗しました'
  end
end 

end
