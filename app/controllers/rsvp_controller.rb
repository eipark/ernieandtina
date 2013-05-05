class RsvpController < ApplicationController
  def rsvp
    @title = "RSVP"
  end

  def respond
    @rsvp_code = params[:rsvp_code]
    @rsvp_code = @rsvp_code.downcase

    @guest = Guest.find_by_rsvp_code(@rsvp_code)

    if @guest
      @plus_one = Guest.find_by_id(@guest.plus_one)
    end

    if @guest
      render :template => 'rsvp/respond'
    else
      flash[:error] = "Incorrect RSVP Code. Try again."
      redirect_to :back
    end

  end

  def complete
    @rsvp_code = params[:rsvp_code]
    @guest = Guest.find_by_rsvp_code(@rsvp_code)
    @plus_one = Guest.find_by_id(@guest.plus_one)

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
    @guest.song_suggestion = params[:song_suggestion]
    @guest.allergies = params[:allergies]
    @guest.food_choice = params[:food_choice]

    @guest.save

    if @plus_one != nil
      @po_attending = params[:po_attending]
      if @po_attending == nil
        flash[:error] = "Please select whether you will be attending or not."
        redirect_to :back
      elsif @po_attending == "yes"
        @po_attending = true
      else
        @po_attending = false
      end

      @plus_one.rsvp = @po_attending
      @plus_one.allergies = params[:po_allergies]
      @plus_one.food_choice = params[:po_food_choice]

      @plus_one.save

    end

    render :template => 'rsvp/complete'
  end


end
