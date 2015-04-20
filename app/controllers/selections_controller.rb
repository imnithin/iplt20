class SelectionsController < ApplicationController

  def new
    group = Group.find(params[:group_id])
    @users = group.users
    @selection = Selection.new
    @current_matches =  Match.where(start_time: Date.today.beginning_of_day..Date.today.end_of_day)
  end

  def create

  end
end
