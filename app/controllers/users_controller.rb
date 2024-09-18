class UsersController < ApplicationController
    def index
        @user = User.new(user_params)
    end
end
