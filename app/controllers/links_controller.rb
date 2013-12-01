class LinksController < ApplicationController
  def show
    @link     = Link.find(params[:id])
    @comment  = Comment.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: @link }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def link_params
      params.require(:link).permit(:id, :user_id, :url, :title)
    end
end