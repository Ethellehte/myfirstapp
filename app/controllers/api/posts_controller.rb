class Api::PostsController < APIController  
  
  def create
    @post = Post.new(post_params)
    if ENV['API_KEY'] == request.headers["apikey"]
      if @post.save
        render json: @post, status: 201
      else
        render json: @post.errors.full_messages, status: 400
       end
     else 
      render json: { status: 407, message: 'Proxy Authentication Required' }
    end
  end

  private


  def post_params
    params.require(:post).permit!
  end

end
