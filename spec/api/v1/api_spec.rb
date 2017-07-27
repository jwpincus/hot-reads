require 'rails_helper'
describe 'The API can', type: :request do
  scenario "can ingest links" do
    params = {'URL'=> "http://www.1.com"}
    post '/api/v1/reads', params: params
    expect(Link.last.URL).to eq("http://www.1.com")
    expect(Link.last.reads.count).to eq(1)
    post('/api/v1/reads', params: params)
    expect(Link.last.reads.count).to eq(2)
  end
end
