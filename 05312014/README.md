## May 31, 2014 - Class Eight

### Agenda
1. Twitter/Facebook Integration/Howto (Ben)
2. Devise Lecture (Jim)
3. Pair up and work on personal projects
4. Kristin Lasita (Gaslight designer)
5. Bobby Uhlenbrock (Ample partner)

#### Twitter Integration  
[Twitter gem](https://github.com/sferik/twitter)

**Steps**   
1. Add twitter gem to Gemfile and bundle install  
2. Create developer account at dev.twitter.com to establish API credentials  
3. Add secrets necessary for Twitter client to secrets.yml  
4. A good practice is to create a Ruby class to encapsulate Twitter gem usage in case the library changes 

#### Facebook Integration  
[koala gem](https://github.com/arsduo/koala)  
OR  
[fb_graph gem](https://github.com/nov/fb_graph)  

**Steps**   
1. Add gem to Gemfile and bundle install
2. For koala, grab an access token from [Facebook Graph Explorer](https://developers.facebook.com/tools/explorer)   
3. Add access_token to secrets.yml  
