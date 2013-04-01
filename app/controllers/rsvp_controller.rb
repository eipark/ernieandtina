class RsvpController < ApplicationController
  def rsvp
    @title = "RSVP"
  end

  def respond
    @rsvp_code = params[:rsvp_code]

    @guest = Guest.find_by_rsvp_code(@rsvp_code)
    if !@guest
      flash[:error] = "Bad code"
      redirect_to :back
    end

  end

  def complete
    @rsvp_code = params[:rsvp_code]
    @guest = Guest.find_by_rsvp_code(@rsvp_code)

    if !@guest
      flash[:error] = "Uh oh... something went wrong"
      redirect_to :back
    end

    @attending = params[:attending]
    if @attending == nil
      flash[:error] = "Please select whether you will be attending or not."
      redirect_to :back
    elsif @attending == "yes"
      @attending = true
    else
      @attending = false
    end

    @guest.rsvp = @attending
    @guest.comment = params[:comment]

    puts @guest.rsvp
    @guest.save
  end

end
