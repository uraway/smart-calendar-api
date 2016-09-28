require 'rails_helper'

describe 'GET /acceptance_records', type: :request do
  let(:url) { '/acceptance_records' }
  let(:acceptance_record) { FactoryGirl.create(:acceptance_record) }

  before do
    acceptance_record
  end

  it 'indexes acceptance_records' do
    get url

    expect(response).to be_success
    expect(response.status).to eq 200
    body = response.body
    expect(body).to have_json_path 'data/0/id'
    expect(body).to have_json_path 'data/0/type'
    expect(body).to have_json_path 'data/0/attributes/location'
    expect(body).to have_json_path 'data/0/attributes/repeat'
    expect(body).to have_json_path 'data/0/attributes/reminder_minutes'
    expect(body).to have_json_path 'data/0/attributes/created_at'
  end
end

describe 'POST /acceptance_records', type: :request do
  let(:url) { '/acceptance_records' }
  let(:acceptance_record_attr) { FactoryGirl.attributes_for(:acceptance_record) }
  let(:params) do
    { acceptance_record: acceptance_record_attr }
  end

  it 'creates a new acceptance_record' do
    post url, params: params
    
    expect(response).to be_success
    expect(response.status).to eq 201
    body = response.body
    expect(body).to have_json_path 'data/id'
    expect(body).to have_json_path 'data/type'
    expect(body).to have_json_path 'data/attributes/location'
    expect(body).to be_json_eql(params[:acceptance_record][:location]).at_path 'data/attributes/location'
    expect(body).to have_json_path 'data/attributes/repeat'
    expect(body).to be_json_eql(params[:acceptance_record][:repeat]).at_path 'data/attributes/repeat'
    expect(body).to have_json_path 'data/attributes/reminder_minutes'
    expect(body).to be_json_eql(params[:acceptance_record][:reminder_minutes]).at_path 'data/attributes/reminder_minutes'
    expect(body).to have_json_path 'data/attributes/created_at'
  end
end
