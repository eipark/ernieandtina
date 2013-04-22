class GuestsController < ApplicationController
  # GET /guests
  # GET /guests.json
  def index
    @guests = Guest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @guests }
    end
  end

  def guestbook
    @comments = Guest.pluck(:comment)
    @comments = Guest.select([:first_name, :last_name, :comment]).map {|e| {first_name: e.first_name, last_name: e.last_name, comment: e.comment}}

  end
end
