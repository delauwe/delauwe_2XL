class RoomsController < ApplicationController

  #before_action :set_room, only: [:show, :edit, :update, :destroy]

  def index
    @rooms = policy_scope(Room)
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  # def set_room
  #   @room = Room.find(params[:id])
  #   authorize @room
  # end
end
