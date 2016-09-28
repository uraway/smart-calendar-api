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

require 'rails_helper'

RSpec.describe AcceptanceRecord, type: :model do
  describe 'Validation' do

    it 'passes validation' do
      acceptance_record = FactoryGirl.build(:acceptance_record)
      expect(acceptance_record).to be_valid
    end

    it 'fails validation when location is nil' do
      acceptance_record = FactoryGirl.build(:acceptance_record, location: nil)
      expect(acceptance_record).to be_invalid
    end

    it 'fails validation when repeat is nil' do
      acceptance_record = FactoryGirl.build(:acceptance_record, repeat: nil)
      expect(acceptance_record).to be_invalid
    end

    it 'fails validation when reminder_minutes is nil' do
      acceptance_record = FactoryGirl.build(:acceptance_record, reminder_minutes: nil)
      expect(acceptance_record).to be_invalid
    end
  end
end
