class ApplicationController < ActionController::Base
  protect_from_forgery
  def home
    @title = 'Home'
  end

  def venue
    @title = 'Venue'
  end

  def story
    @title = 'Our Story'
  end

  def photos
    @title = 'Photos'
  end

  def guestbook
    @title = 'Guestbook'
  end

  def registry
    @title = 'Registry'
  end

  def logistics
    @title = 'Logistics'
  end
end
