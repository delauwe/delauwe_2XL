class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :terms]

  def home
    @apartments = Apartment.order(availability: :asc).all
    @available_soon = Apartment.where(category: "flatshare").order(availability: :asc).limit(3)
  end
end
