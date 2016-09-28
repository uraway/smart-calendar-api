require 'rails_helper'

RSpec.describe 'routing to ', type: :routing do
  let(:url) { '/acceptance_records' }

  it 'routes acceptance_records to acceptance_records#index' do
    expect(get: url).to route_to(
      controller: 'acceptance_records', action: 'index'
    )
  end

  it 'routes acceptance_records to acceptance_records#create' do
    expect(post: url).to route_to(
      controller: 'acceptance_records', action: 'create'
    )
  end
end
