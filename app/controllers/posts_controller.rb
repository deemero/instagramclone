class PostsController < ApplicationController
  def create
    post = current_user.posts.create(post_params)
     if post.save
      redirect_to user_path(current_user)
     else
       redirect_to user_path(current_user)
     end
   end

def edit
 @post = Post.find(params[:id])
end

def update
 @post = Post.find(params[:id])
 @post.update(post_params)
 if @post.save
  redirect_to user_path(current_user)
 else
   redirect_to user_path(current_user)
 end
end

def destroy
  @post = Post.find(params[:id])
  @post.destroy
  redirect_to user_path(current_user)
end



   private
     def post_params
       params.require(:post).permit(:caption, :upload_photo)

     end
end
