require 'spec_helper'

feature 'Editing a post' do
  # uncomment this line when running this spec
  # let!(:post) { create(:post) }

  scenario 'with valid attributes' do
    pending 'Please complete viewing_a_post_spec.rb first'
    visit post_path(post)
    click_link 'Edit Post'
    expect(current_path).to eq edit_post_path(post)

    fill_in 'Title', with: 'Zombie Ipsum!!!'
    fill_in 'Content', with: 'Zombies reversus ab inferno, nam malum cerebro.'
    fill_in 'Author', with: 'Daryl Dixon'
    click_button 'Save'

    post = post.reload
    
    expect(current_path).to eq post_path(post)
    expect(post.title).to eq 'Zombie Ipsum!!!'
    expect(post.content).to eq 'Zombies reversus ab inferno, nam malum cerebro.'
    expect(post.author).to eq 'Daryl Dixon'
  end

  scenario 'with invalid attributes' do
    pending 'Please complete viewing_a_post_spec.rb first'
    visit post_path(post)
    click_link 'Edit Post'

    fill_in 'Title', with: ''
    fill_in 'Content', with: ''
    fill_in 'Author', with: ''
    click_button 'Save'

    expect(current_path).to eq edit_post_path(post)
    expect(page).to have_content('.alert.alert-error')
  end
end
