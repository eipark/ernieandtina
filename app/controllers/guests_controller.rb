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
    @comments = []
    Guest.all.each do |g|
      if !g.comment.blank?
        comment = {}
        comment[:comment] = g.comment
        from = g.first_name + " " + g.last_name[0]
        if g.plus_one != nil
          plus_one = Guest.find_by_id(g.plus_one)
          plus_one_from = " and " + plus_one.first_name + " " + plus_one.last_name[0]
          from += plus_one_from
        end
        comment[:from] = from
        @comments.push(comment)
      end
    end

  end
end
