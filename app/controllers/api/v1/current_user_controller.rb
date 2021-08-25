module Api
  module V1
    class CurrentUserController < Api::V1::ApiController
      before_action :authenticate_user!
      
      def index
        render json: current_user, status: :ok
      end
    end
  end
end