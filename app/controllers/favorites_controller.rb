class FavoritesController < ApplicationController

def index
  @favorite_topics = current_user.favorite_topics
end

def create
  favorite = Favorite.new
  favorite.user_id = current_user.id
  favorite.topic_id = params[:topic_id]

  if favorite.save
    redirect_to topics_path, success: 'お気に入り登録しました'
  else
    redirect_to topics_path, danger: 'お気に入り登録に失敗しました'
  end
end

def destroy
  favorite =Favorite.find_by(topic_id: params[:topic_id], user_id: current_user.id)
  favorite.destroy
  redirect_to topics_path
end

end
