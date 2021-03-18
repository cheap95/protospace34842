class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
        #@nickname = user.nickname
        @prototypes = @user.prototypes

    end
end
