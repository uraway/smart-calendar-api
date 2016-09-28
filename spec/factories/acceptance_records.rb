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

FactoryGirl.define do
  factory :acceptance_record do
    location false
    repeat false
    reminder_minutes false
  end
end
