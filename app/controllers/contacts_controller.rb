class ContactsController < ApplicationController

  def create
    if User.where(email: params[:user][:email]).any?
      render '/contacts/new'
    else
      params[:user][:email].each do |email|
        @user = User.new(email: email)
        @user.password = Devise.friendly_token.first(8)
        if @user.save
         user_group =  @user.user_groups.build(group_id: params[:group_id].to_i)
         user_group.save!
      # UserMailer.notify_user(@user).deliver
    else

    end
  end
  redirect_to root_path
end
end



private

  # def user_params
  #   params.require(:user).permit(:first_name, :last_name, :email)
  # end

end
