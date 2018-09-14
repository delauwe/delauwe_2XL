class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :contact, :terms, :flatshares, :apparts]

  def home
    @apartments = Apartment.order(availability: :asc).all
    @available_soon = Apartment.where(category: "flatshare").order(availability: :asc).limit(3)
    @apparts = Apartment.where(category: "apartment").order(availability: :asc)
  end

  def flatshares
    @flatshares = Apartment.where(category: "flatshare").order(availability: :asc).all
  end

  def apparts
    @apparts = Apartment.where(category: "apartment").order(availability: :asc).all
  end

  def robots
    # Don't forget to delete /public/robots.txt
    respond_to :text
  end
end
