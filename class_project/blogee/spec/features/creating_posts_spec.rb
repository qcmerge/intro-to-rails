require 'spec_helper'

feature 'Creating posts' do
  scenario 'with valid attributes' do
    # visit the posts path in the browser
    visit posts_path
    # find a link titled new post and click it
    click_link 'New Post'
    # find the text field called Title and fill it in with the text
    fill_in 'Title', with: 'My First Post'
    # find the text field called Content and fill it in with the text    
    fill_in 'Content', with: 'Lorem ipsum dolor sit amet.'
    # find the text field called Author and fill it in with the text    
    fill_in 'Author', with: 'Randy Savage'
    # find the button called Save and click it
    click_button 'Save'
    # Assert that there is now 1 post stored in the database
    expect(Post.count).to eq 1
    # load the last post from the database for assertions
    post = Post.last
    # assert the browsers current path to be the given path
    expect(current_path).to eq post_path(post)
    # assert that the posts title is correct
    expect(post.title).to eq 'My First Post'
  end

  scenario 'with invalid attributes' do
    pending "Please Finish: Creating posts with valid attributes before starting"
    # visit the posts path in the browser
    visit posts_path
    # find a link titled New Post and click it
    click_link 'New Post'
    # find the button called Save and click it
    click_button 'Save'
    # assert that we are still on the form
    expect(current_path).to eq new_post_path
    # assert that we are getting the error flash
    expect(page).to have_content('.alert.alert-error')
  end
end
