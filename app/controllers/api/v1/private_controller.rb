module Api
  module V1
    class PrivateController < Api::V1::ApiController
      before_action :authenticate_user!

      def test
        render json: {
        message: "This is a private message for #{current_user.email} you should only see if you've got a correct token"
        }
      end
    end
  end 
end
