class PostsController < ApplicationController
  before_action :authenticate_user!
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
        flash[:success] = "변화가 기록되었습니다!"
        redirect_to root_path
      else  
        flash[:alert] = "왜 안올라가지? ㅜ"
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
    
    def comment_write
      comment = Comment.new
      comment.content = params[:content]
      comment.post_id = params[:id_of_post]
      if comment.save
      redirect_to :back
      else
        redirect_to '/#'
      end
    end
    
    
 private
  
  
    def post_params
        params.require(:post).permit(:title, :content, :image_url)
    end
    
    
    
    def find_post
      @post = Post.find(params[:id])
    end
    

end
