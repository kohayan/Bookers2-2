class FavoritesController < ApplicationController

  before_action :book_params

  def create
  	@favorite = Favorite.new(user_id: current_user.id, book_id: params[:book_id])
  	@favorite.save
  end

  def destroy
  	@favorite = Favorite.find_by(user_id: current_user.id, book_id: params[:book_id])
  	@favorite.destroy
  end


  private

  def book_params
    @book = Book.find(params[:book_id])
  end
end
