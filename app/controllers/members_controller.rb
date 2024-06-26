# app/controllers/members_controller.rb
class MembersController < ApplicationController
  before_action :authenticate_user!

  def show
    user = get_user_from_token
    if user.nil?
      render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
      return
    end

    user = get_user_from_token
    render json: {
      message: "If you see this, you're in!",
      user: user
    }
  end

  private

  def get_user_from_token
    if !request.headers.include?('Authorization')
      return nil
    end
    jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1], Rails.application.credentials.devise[:jwt_secret_key]).first
    user_id = jwt_payload['sub']
    User.find(user_id.to_s)
  end
end