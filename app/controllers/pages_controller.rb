class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact]

  def home
    @best_apartments = Apartment.limit(3)
    @flatsharings = Apartment.where(category: "flatsharing" || "coloc")
    @apartments = Apartment.where(category: "apartment" || "appart")

  end
end
