## Getting Started Reference

### Rails new

Basic usage:

    $ rails new <app_name>
    
This will create a directory named: <app_name> that contains a brand new rails app folder structure and boilerplate files.

There are lots of options, which you can view by running:

    $ rails new -h

For our purposes, we want to use the Postgres database (easy to deploy to Heroku) and we'll skip Test::Unit (-T option):  

    $ rails new <app_name> -T -d postgresl  

**Reference:** [Rails Guide - Getting Started](http://guides.rubyonrails.org/getting_started.html)

### Check your Gemfile and install Rspec
After your Rails app is created, take a look at your Gemfile and make any edits necessary. In our work to date, we've removed the turbolinks gem and rearranged things without as many comments and also grouped gems by environment.

Install rspec-rails by adding the following to your Gemfile:

```
group :test do
  gem 'rspec-rails', '~> 3.0.0.beta'
end
```

Then, run ```$ bundle install```  and then ````$ rails generate rspec:install````  

We also added the following gems in the test group for more testing capabilities:  
    
    gem 'capybara'
    gem 'factory_girl_rails'
    gem 'database_cleaner'

**Reference:** [rspec-rails on Github](https://github.com/rspec/rspec-rails)

### Git and Github
At this point, with the boilerplate Rails app and bundle in place, you should get things committed to git:  
    
    $ git init
    $ git add --all
    $ git commit -m "Initial commit"  

This series of commands initializes a git repository locally, adds all the files and creates a new commit.

You can now create a remote repository at Github.  If you're logged in there, you can create a new repository here: [https://github.com/new](https://github.com/new).  Once the repository is created at Github, the confirmation page there shows instructions on how to "Push an existing repository from the command line" and that's exactly what we need to do (since we already have a local repository):  
    
    $ git remote add origin <GIT URL FOR NEW REPOSITORY>
    $ git push -u origin master

