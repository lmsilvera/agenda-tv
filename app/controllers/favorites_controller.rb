class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def create
    @fav = Favorite.new(user: current_user, show_id: params[:show_id])
    @fav.save
    respond_to do |format|
      format.js
    end
  end
end
