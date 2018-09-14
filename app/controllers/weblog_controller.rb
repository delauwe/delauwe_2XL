class WeblogController < ApplicationController

    caches_page :index, :show, :contact, :terms, :flatshares, :apparts

    self.page_cache_directory = -> { Rails.root.join("public", request.domain) }

  def update
    List.update(params[:list][:id], params[:list])
    expire_page action: "show", id: params[:list][:id]
    redirect_to action: "show", id: params[:list][:id]
  end

end
