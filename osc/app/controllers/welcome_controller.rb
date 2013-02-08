class WelcomeController < ApplicationController
  def index
    @events = Event.all.reverse
    @annoucements = Annoucement.all.reverse
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
