class WelcomeController < ApplicationController
  # For this controller skip this before action that is specified in the ApplicationController
  # but only for the index aciton.
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end
end
