class User::PostsController < UserController

    skip_before_action :verify_authenticity_token, only: :like_toggle

    def create
       f_params = form_params.merge(user: current_user)
       @comment = Comment.new(f_params)

       if @comment.save
        respond_to do |format|
            format.js { render "create" }
        end
       end
    end
    
    def destroy
        
    end   

    private

    def form_params
        params.require(:post).permit(:body, :post_id)
    end
end