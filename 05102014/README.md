## May 10, 2014 - Class Six

### Tagging

#### Feature List
1. Add ability for author to add tags to a post. (Chapter 11.1)
2. Display list of tags with post. (Chapter 11.1)
3. BONUS: Add ability for logged in user (author) to delete a tag. (Chapter 11.4)

#### Procedure
1. Add to creating_posts_spec.rb:
```
scenario "Creating a post with tags" do
  visit posts_path
  click_link 'New Post'

  fill_in "Username", with: @user.username
  fill_in "Password", with: @user.password
  click_button "Sign in"
  click_link 'New Post'

  fill_in 'Title', with: 'My First Post'
  fill_in 'Content', with: 'Lorem ipsum dolor sit amet.'
  fill_in "Tags", with: "browser visual"
  click_button "Save"

  within("#tags") do
    expect(page).to have_content("browser")
    expect(page).to have_content("visual")
  end
end
```  
2. Modify app/views/posts/_form.html.erb to add "Tags" field (p. 434).  
3. Modify app/models/post.rb to add a virtual attribute for tags.  
4. Create has_and_belongs_to_many association in Post, called tags (p.437).  
5. Generate Tag model  
    rails g model tag name:string --timestamps false
6. BEFORE RUNNING MIGRATION: Add a tags_posts table (p. 438)
7. Create before_create method to associate tags to a post (p. 439)
8. Modify posts/show to display associated tags

