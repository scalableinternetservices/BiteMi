class CommentsController < ApplicationController
  def index
    @comments = Comment.hash_tree(limit_depth: 10)
  end

	def new
	  @comment = Comment.new(parent_id: params[:parent_id])
	end

  def create
		if params[:comment][:parent_id].to_i > 0 
		# mom?
	    parent = Comment.find_by_id(params[:comment].delete(:parent_id))
	    @comment = parent.children.build(comment_params)
	  else 
	  # Shit, I am the first one?
	  	@comment = Comment.new(comment_params)
	  end

		if @comment.save
			@comment.root.touch
			flash[:success] = 'Your comment was successfully added!'
				listing = Listing.find_by_comment_root(@comment.root);
		    redirect_to listing_path(listing.id)
		else
		    render 'new'
		end
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :author)
  end

end