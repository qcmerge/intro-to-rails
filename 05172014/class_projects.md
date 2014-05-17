## Class Projects

### Sandi - Recipe app
Pick ingredients, select within app and search recipes
- different search options - include all ingredients, 
- Recipe sources: Food2Fork API, Yummly
- Gems for consuming APIs - Httparty (lighter-weight HTTP wrapper) (and there are others more full-featured - Faraday, Typhoeus)
- Start with ingredient pick list and decide whether to get API integrated OR work on interface for user to pick ingredients for later API integration

### Rohit - Social feed aggregation
Aggregate feeds from social networks into a single feed (FB, Twitter, Instagram)
- Build your own generic API (SocialNetwork.read?) that returns an array of strings(for example) that the UI can display. Then, build out functionality that can handle reading from various social networks and transforming that data into the "generic" format.
- Gems - twitter gem (sferik/twitter), koala for Facebook, instagram/instagram-ruby-gem for Instgram

### Josh - Animal rescue transportation coordination (Uber for rescues)
Organizations register trips, define legs of the trip.  Volunteers sign up to drive legs of the trip.
- Mapping - Google Maps JS API
- Authentication - Devise
- Access Control - Pundit

### Dave - Vanity License Plate Community
Post pictures (or text) of license plates along with your translation (and allow other translations).  Or tag entries that others should translate.
- Features: User registration, searching, file uploads, voting/popularity, ranking users by number of favorites
- Watch for obscenity - moderation, obscenity gem, flagging inaappropriate content
- Image processing - overlaying text into state license image template (minimagick, RMagick)
- Gems: Carrierwave gem for file uploads, Devise gem for registration

### Chip - Search Engine for Multiple Sources
Ability to search multiple sources (Twitter streams, web sites, Facebook, etc)
- Internally, start with a generic search class interface that to start with returns fake results
- Capybara, Nokogiri, Mechanize gems

### Tom - Private Dropbox on OpenStack object store
Users login to upload/manage files.  Share files.
- Gems: carrierwave-swift-swauth, Devise for authentication

### Andy - Recipe Crawling App
Supply URL of recipe so that application can parse it into ingredients, etc
- Gems: Nokogiri to parse contents of recipes, acts-as-taggable-on (https://github.com/mbleigh/acts-as-taggable-on)

### Anna - Class Wiki

* Students
  * email
  * password
  * first name
  * last name
  * avatar
  * has_many comments

* Class
  * title
  * description
  * has_many topics
  * has_many assignments
  
* Membership
  * has_many classes
  * has_many students
  
* Topic
  * title
  * file_attachment
  * description
  * has_many comments

* Comments
  * text
  * file_attachment
  * belong_to users
  * belong_to topics
  * belongs_to comments

* Assignments
  * due_date
  * title
  * description
  * has_many comments

Students can login with email and password
Password reset functionality
Students may register with an @ursulineacademy.org email address
Students may become members of classes pending approval
Students may post new topics if they are members of that class

The creator of a particular class is the *class admin*
The class admin may promote co-admins
The class admin must approve class membership
The class admin will receive an email notifying pending memberships

The class admin may create assignments

Class members may comment on topics within that class
Comments may be deleted by the commentor and/or the class admin
Topic creator will be notified of new comments via email

Facebook-esque notification tray

#### Pages

* Landing Page
* Login
* Password Reset

* Class list
* Class Show
  * Topic list
  * Assignment List - sorted by due date, calendar view?
* Class Edit

* Topic Show
  * Comment List

### Pic - Interactive Scoring of Facial Features for Emotional Intelligence
Child picks eyebrows, eyes, and mouth to match specified emotion.  Each image is scored for how well it matches that emotion
- User authentication to keep track of user score and face
- Face model to keep track of each version created by child
- Controllers for Eyebrows, Eyes, Mouth
- Gems - Devise for authentication

### Cindy - Mapping of farmer's markets
Display map of farmer's markets.  Allow farmer's market administrators to manage vendors.  Allow vendors/farms to manage their information.
- Gems - geocoder (probably add to both farmer's market and vendor models)
- Authentication with Devise, separate Market from Vendor access with Pundit

### Zac - Work Scheduler
Schedule jobs based on materials, deadlines
- Possible models: Jobs(time required, machine needed, deadline), Machine 

### Alex - Foosball App
Track match/game history - opponents and scores. Display chance of beating someone.  Ranking. Login via Github with Oauth. Suggestion list.

