class ProfilesController < ApplicationController
  def update
    if current_user.update(user_params)
      UpdateUserJob.perform_later(current_user)
      flash[:notice] = "Your profile was updated"
      redirect_to root_path
    else
      render :edit
    end
  end
end
