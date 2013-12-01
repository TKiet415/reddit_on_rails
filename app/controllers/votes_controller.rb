class VotesController < ApplicationController
  def create
    @vote = current_user.votes.where(:link_id => params[:vote][:link_id]).first || current_user.votes.create(params[:vote])
    @vote.update_attributes(:up => params[:vote][:up])
    #puts "======================="
    #puts @vote.errors.inspect
    redirect_to :back
  end
end
