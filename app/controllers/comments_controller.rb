class CommentsController < ApplicationController
    
    def create
        @comment = current_user.comments.create!(params.require(:comment).permit(:comment, :pin_id))
        @comment.user = current_user
        redirect_to pin_path(@pin)
    end
    
    def destroy
        @pin = Pin.find(params[:pin_id])
        @comment = @pin.comments.find(params[:id])
        @comment.destroy
        redirect_to pin_path(@pin)
    end
end
