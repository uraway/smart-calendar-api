# == Schema Information
#
# Table name: acceptance_records
#
#  id               :integer          not null, primary key
#  location         :boolean          default(TRUE), not null
#  repeat           :boolean          default(TRUE), not null
#  reminder_minutes :boolean          default(TRUE), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class AcceptanceRecord < ApplicationRecord
  validates :location, inclusion: { in: [true, false] }
  validates :repeat, inclusion: { in: [true, false] }
  validates :reminder_minutes, inclusion: { in: [true, false] }
end
