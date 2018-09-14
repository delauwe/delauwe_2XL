class SitemapsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :init_sitemap]
  layout :false
  before_action :init_sitemap

  def index
    @apartments = Apartment.all
  end

  private

  def init_sitemap
    headers['Content-Type'] = 'application/xml'
  end

end
