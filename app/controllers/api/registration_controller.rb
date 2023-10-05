class Api::RegistrationController < Api::ApiController
    skip_before_action :authenticate_user! 
    def create
        user = User.create(user_params)
        if user.valid_password? (user_params[:password])
            render json: {token: Api::JsonWebToken.encode(id: user.id)}
        else 
            render json: {errors: ["invalid email or password"]}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :lastname, :username, :email, :password)
    end
end