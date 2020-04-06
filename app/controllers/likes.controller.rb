class LikessController < ApplicationController
  before_action :authenticate_account!

  def save_like
    @like = Like.new(post_id: params[:id], account_id: current_account.id)
    @post.account_id = current_account.id if account_signed_in?

   
      respond_to do |format|
         if @like.save
        format.jason{
            { success: "true"}
         else
          { success: "false"}
         end
        }      
    end
  end
  
end
