class BookCommentsController < ApplicationController

  def create
    @book_comment = BookComment.new
    @book = Book.find(params[:book_id])
    @user = @book.user
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = @book.id
    comment.save

  end

  def destroy
    @book_comment = BookComment.new
    @comment = Book.find(params[:book_id])
    @user = @comment.user
    comment = @comment.book_comments.find(params[:id])
    if current_user.id == comment.user.id
    comment.destroy

    else
      render "books/show"
    end
  end

  def book_comment_params
      params.require(:book_comment).permit(:comment)
  end


end
