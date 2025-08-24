class AttendancesController < ApplicationController
  before_action :set_event

  def create
    @attendance = @event.attendances.new(attendance_params)
    if @attendance.save
      redirect_to @event, notice: "参加登録しました。"
    else
      flash.now[:alert] = "名前を入力してください。"
      render "events/show", status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = @event.attendances.find(params[:id])
    @attendance.destroy
    redirect_to @event, notice: "参加を取り消しました。"
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def attendance_params
    params.require(:attendance).permit(:name)
  end
end
