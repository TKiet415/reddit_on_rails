class PagesController < ApplicationController

  def index


    @links = Link.order('created_at DESC').paginate(:page => params[:page] ||= 1, :per_page => params[:per_page] ||= 25)
  end

end
