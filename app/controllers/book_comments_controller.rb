class BookCommentsController < ApplicationController
  def create
  	@comment = BookComment.new(book_comment_params)
  	@comment.user_id = current_user.id
  	@comment.book_id = params[:book_id]
  	if @comment.save
      flash[:notice] = "Comment was successfully created."
      redirect_to book_path(params[:book_id])
    else
      @book = Book.find(params[:book_id])
      @user = @book.user
      render '/books/show'
    end
  end

  def destroy
  	comment = BookComment.find_by(id: params[:id], book_id: params[:book_id])
    if current_user.id != comment.user_id
      redirect_to controller: 'books', action: 'show'
    end
  	comment.destroy
  	redirect_back(fallback_location: root_path)
  end

  private
  def book_comment_params
  	params.require(:book_comment).permit(:comment)
  end
end
