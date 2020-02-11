class ApplicationController < ActionController::Base
  before_action :set_last_seen_at, if: :user_signed_in?
  
  def set_last_seen_at
    current_user.touch(:last_seen_at)
  end
end
