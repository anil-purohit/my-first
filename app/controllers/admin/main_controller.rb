class Admin::MainController < ApplicationController
  before_filter :block_non_admin_users

  private
  def block_non_admin_users
    if !@current_user.present? || !["admin"].include?(@current_user.user_type)
      redirect_to root_url
    end
  end
end