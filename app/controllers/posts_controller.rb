class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:update, :destroy]

  def show
    puts "123"
    user = get_user_from_token
    if user.nil?
      render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
      return
    end

    post = Post.all
    render json: {
      message: "Success",
      status: 200,
      post: post
    }
  end

  def create
    user = get_user_from_token
    if user.nil?
      render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
      return
    end

    @post = Post.new(post_params)
    @post.user = user
    if @post.save
      render json: @post, status: :created
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end


  def update
    user = get_user_from_token
    if user.nil?
      render json: { message: 'unauthorized' }, status: :unauthorized
      return
    end

    @post.user = user
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    user = get_user_from_token
    if user.nil?
      render json: { message: 'unauthorized' }, status: :unauthorized
      return
    end

    if @post.destroy
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def get_user_from_token
    puts request.headers
    if !request.headers.include?('Authorization')
      return nil
    end
    jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1], Rails.application.credentials.devise[:jwt_secret_key]).first
    user_id = jwt_payload['sub']
    User.find(user_id.to_s)
  end

  def post_params
    params.require(:post).permit(:title, :detail)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end