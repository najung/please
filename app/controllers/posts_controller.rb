class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
   
    @posts = Post.all.reverse
  end
  
    def new
      @post = current_user.posts.build
    end
    
    
    def create  
      @post = current_user.posts.build(post_params)
      
    uploader = UserUploader.new
    uploader.store!(params[:pic])
    
    @post.image_url =uploader.url
    @post.save
    
      if @post.save
        redirect_to root_path
      else  
        render 'new'
      end
    end
    
    def show
    end
    
    def edit
    end
    
    def update
      @post.update(post_params)
      @post.save
      redirect_to root_path
    end
  
    def destroy
      @post.destroy
      redirect_to root_path
    end
    
 private
  
  
    def post_params
        params.require(:post).permit(:title, :content, :image_url)
    end
    
    
    
    def find_post
      @post = Post.find(params[:id])
    end
    

end
