class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :show ]
  skip_after_action :verify_authorized

  def show
    render params[:page]
  end
end
