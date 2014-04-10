require 'spec_helper'

feature 'Deleting a post' do
  # uncomment the following line when running this spec
  # let!(:post) { create(:post) }

  scenario do
    pending 'Please complete editing_a_post_spec.rb first'
    visit post_path(post)
    click_link 'Delete Post'
    expect(Post.count).to eq 0
    expect(current_path).to eq posts_path
    expect(page).to have_content('.alert.alert-success')
  end
end
