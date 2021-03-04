class AccountsController < ApplicationController

  def dashboard
    @posts = Post.all
  end

end
