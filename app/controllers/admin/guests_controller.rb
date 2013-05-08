class Admin::GuestsController < ActionController::Base
  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      username == 'ernieandtina' && password == 'password123'
    end
  end

  # GET /admin/guests
  # GET /admin/guests.json
  def index
    @admin_guests = Guest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @admin_guests }
    end
  end

end
