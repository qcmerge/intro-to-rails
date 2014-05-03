1. Add a published attribute to post
Add a migration for the published attribute

```ruby
published = true/false
published_date = nil/1/1/2014
```

2. Have an ability to publish a post

```ruby
Save button, Save and Publish
Publish -> posts#publish

@post.published_date = Date.today
@post.save
```

3. Only signed in users can see draft posts

```ruby
in posts.rb
scope :published, -> { where(published: true) }

Post.where(published: true)

in posts_controller.rb
def index
  @posts = if !current_user
    Post.published
  else
    Post.all
  end
end
```

```ruby
in post.rb
STATE = %w(published draft)

in posts/_form.html.erb or posts/new.html.erb
<%= f.select :state, options_for_select(Post::STATE) %>

in posts_controller.rb
@post.state = 'published'
```
