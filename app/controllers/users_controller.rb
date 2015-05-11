class UsersController < ApplicationController

  def index

    @users = User.all

  end

  def create
    email = (0...8).map { (65 + rand(26)).chr }.join.downcase + "@railstest.com"
    User.create(email: email)
    redirect_to users_path

  end

end