class RoomsController < ApplicationController
  def index
    @user = current_user
    @reservations = Reservation.all
  end

  def new
    @user = current_user
    @room = Room.new
  end

  def create
    @user = current_user
    @room = Room.new(room_parms)
    @room.poster = current_user.id
    if @room.save
      redirect_to room_url(id: @room.id)
    else
      render"new"
    end
  end


  def show
    @reservation = Reservation.new
    @user = current_user
    @room = Room.find(params[:id])
  end

  def edit
    @user = current_user
    @room = Room.find(params[:id])
  end

  def update
    @user = current_user
    @room = Room.find(params[:id])
    if @room.update(room_parms)
      redirect_to :own
    else
      render"edit"
    end

  end

  def destroy

  end

  def own
    @user = current_user
    @room = Room.all
    @rooms = @user.rooms
  end

  def result
    @user = current_user
    @room = Room.all
    @q = Room.ransack(params[:q])
    @rooms = @q.result(distinct: true)
  end

  private
  def room_parms
    params.require(:room).permit(:name,:introduction,:img,:price,:address,:user_id,:persons,:days, :total_price)
  end
end
