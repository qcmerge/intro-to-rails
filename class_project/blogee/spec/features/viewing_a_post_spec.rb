require 'spec_helper'

feature 'Viewing a post spec' do
  # uncomment the following line when running this feature
  # let!(:post) { create(:post) }
  
  scenario do
    pending "Please complete creating_posts_spec.rb"
    visit '/'
    click_link post.title
    expect(current_page).to eq post_path(post)
    within('#title') do
      expect(page).to have_content post.title
    end
    within('#content') do
      expect(page).to have_content post.content
    end
    within('#author') do
      expect(page).to have_content post.author
    end
  end
end
