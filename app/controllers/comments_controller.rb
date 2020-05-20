class CommentsController < ApplicationController

	before_action :set_issue
	before_action :authenticate_user!
	
	def create
		@comment = @issue.comments.new(comment_params)
		@comment.user = current_user
		@comment.save
		redirect_to issue_path(@issue)
	end

	def destroy
		@comment = @issue.comments.find(params[:id])
		@comment_id = @comment.id
		@comment.destroy
	end

	private
	def comment_params
		params.require(:comment).permit(:body, :issue_id)
	end
	def set_issue
		@issue = Issue.find(params[:issue_id])
   end
    
end
    
