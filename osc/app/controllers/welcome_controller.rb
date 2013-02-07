class WelcomeController < ApplicationController
  def index
    @events = Event.all
    @annoucements = Annoucement.all
  end

  def contactus
  end

  def aboutus
  end
  def club
  end
  def login
  end
  def holiday
  end
end
