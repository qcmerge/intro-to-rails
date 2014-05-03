## May 3, 2014 - Class Five

### Agenda
* Question time to cover any issues since last class
* [Git/Github exercise](./git_experimentation.md)
* CarrierWave
* Continue blogee in pairs - file uploading (work on 9.1, other sections are bonus), tracking state
* Unstructured discovery time - pair up and start on personal projects?


### Blogee Objectives
#### File Uploading - Attach a file to a post
1. Add to creating_posts_spec.rb:
```
scenario "Creating a post with an attachment" do
  visit posts_path
  click_link 'New Post'

  ### IF YOU HAVE Authentication in place
  fill_in "Username", with: @user.username
  fill_in "Password", with: @user.password
  click_button "Sign in"
  ### END if authentication in place

  click_link 'New Post'
  fill_in 'Title', with: 'My First Post'
  fill_in 'Content', with: 'Lorem ipsum dolor sit amet.'

  attach_file "File", "spec/fixtures/test.jpg"
  click_button "Save"
  
  expect(page).to have_content("My First Post")
  
  within("#asset") do
    expect(page).to have_content("test.jpg")
  end 
end
```
3. Create a file that matches the name (and location) specified in the attach_file line
4. Add field to posts form partial (posts/_form.html.erb_) that satisfies the test and modify form to handle file uploads (p. 322)
5. Modify posts/show.html.erb to display results of file upload (p. 323)
6. Add carrierwave gem and create AssetUploader.  Run migrations necessary (follow instructions in book)
7. Adjust post_params in PostsController to handle asset attribute.
8. Create a new commit (git add --all; git commit -m "SOME MESSAGE").  Also see notes about how to ignore the public/uploads directory when making commits (p. 326).

## Resources
[CarrierWave](https://github.com/carrierwaveuploader/carrierwave)
