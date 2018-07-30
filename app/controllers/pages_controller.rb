class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
    @apartments = Apartment.all
    @best_apartments = Apartment.limit(3)
  end
end
