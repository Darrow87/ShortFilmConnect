class UserController < ApplicationController

  def show
    @user = User.params[:id]
  end

end
