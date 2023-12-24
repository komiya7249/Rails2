class ReservationsController < ApplicationController
  def index
    @user = current_user
    @reservations = @user.reservations
    @room = Room.all
  end

  def show
    @user = current_user
    @reservations = @user.reservations
    @room = Room.all
  end

  def new 
  end

  def confirm
    @reservation = Reservation.new(reservation_parms)
    @user = current_user
    if @reservation.save
      @room = @reservation.room
      days_seconds = @reservation.check_out_at-@reservation.check_in_at
      @reservation.days = (days_seconds/1.days).floor
      @reservation.total_price = @reservation.persons*@room.price*@reservation.days 
      @reservation.save
    else
      @room = @reservation.room
      render"rooms/show"
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def booking

  end

  private
  def reservation_parms
    params.require(:reservation).permit(:persons, :days, :room_id, :check_in_at, :check_out_at, :total_price, :user_id)
  end
  
end
