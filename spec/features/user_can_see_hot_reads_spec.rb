require "rails_helper"
describe "User goes to /" do
  before(:each) do
    n = 1
   20.times do
     Link.find_or_create_by(URL: "http://www.#{n}.com").reads.create
     n += 1
   end
   n = 1
   10.times do
     (n+1).times do
       Link.find_or_create_by(URL: "http://www.#{n}.com").reads.create
     end
     n += 1
   end
  end
  scenario "They see 10 hot reads" do
    visit '/'
    expect(page).to have_selector('.link', count:10)
    expect(page).to have_content('http://www.1.com')
    expect(page).to have_content('http://www.10.com')
  end
end
# Build a second application called "Hot Reads" that fulfills the following requirements.
#
# When a link is marked as read in the main application (URLLockBox), the link's url is sent to Hot Reads, which creates a record of the "read".
#
# As an unauthenticated user, I can visit the Hot Reads main index page and see a list of the top-10 most-read URLs (not titles or URL/title combos) across all users. Only reads from the last 24 hours should count towards the ranking. Count URLs read by different users as the same URL
