class SiteController < ApplicationController
  def home
    @cars = Car.all
  end
end
