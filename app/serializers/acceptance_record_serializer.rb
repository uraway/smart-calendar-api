class AcceptanceRecordSerializer < ActiveModel::Serializer
  attributes :id, :location, :repeat, :reminder_minutes, :created_at
end
