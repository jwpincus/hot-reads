require "rails_helper"
describe "User goes to /" do
  before(:each) do
    n = 1
   20.times do
     post('/api/read', data: {url: "http://www.#{n}.com"})
     n += 1
   end
   n = 1
   10.times do
     post('/api/read', data: {url: "http://www.#{n}.com"})
     n += 1
   end
  end
  scenario "They see 10 hot reads" do
    visit '/'
    expect(page).to have_selector()
  end
end
