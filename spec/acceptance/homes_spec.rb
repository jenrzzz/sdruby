require 'spec_helper'

feature "Homepage", :js => true do
  let!(:podcast) { create(:podcast) }

  scenario "Viewing the Homepage" do
    visit root_path
    page.should have_selector("h2", :content => "Latest from the SD Ruby Podcast")
    page.should have_content(podcast.name)
    page.should have_content("Next meeting:")
  end
end
