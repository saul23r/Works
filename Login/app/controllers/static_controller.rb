class StaticController < ApplicationController
  before_action :authentication_user, only: [:user]

  def main
  end

  def user
  end
end
