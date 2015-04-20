class ContactsController < ApplicationController

  def create
    if User.where(email: params[:user][:email]).any?
      render '/contacts/new'
    else
      params[:user][:email].each do |email|
        @user = User.new(email: email)
        @user.password = Devise.friendly_token.first(8)
        if @user.save
         @user.user_groups.build(group_id: params[:user][:group_id]).save
      # UserMailer.notify_user(@user).deliver
    else

    end
  end
  redirect_to group_path(id: params[:user][:group_id])
end
end



private

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email)
  # end

end
