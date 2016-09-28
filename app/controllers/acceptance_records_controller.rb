class AcceptanceRecordsController < ApplicationController
  def index
    render json: AcceptanceRecord.all, each_serialzier: AcceptanceRecordSerializer
  end

  def create
    @acceptance_record = AcceptanceRecord.new(acceptance_record_params)
    @acceptance_record.save!

    render json: @acceptance_record, serializer: AcceptanceRecordSerializer, status: :created
  rescue => e
    render json: { error: e.message }, status: :unprocessable_entity
  end

  private

  def acceptance_record_params
    params.require(:acceptance_record)
          .permit(:location, :repeat, :reminder_minutes)
  end
end
