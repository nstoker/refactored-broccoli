# Jeopardy

The task is to create a page where 10 random questions are asked, answers captured and then a total score at the end based on the money column of the data.

Jeopardy is powered by [Sinatra](http://sinatrarb.com/)

# Submission

Once completed, please zip your finished work folder in its entirety and email it to your contact at clixifix®.

# Supplimentary Ruby Docs
  - Sinatra documentation (server side) http://sinatrarb.com/intro.html
  - Ruby Docs
  -- https://www.ruby-lang.org/en/documentation/

  -- CSV specific: https://docs.ruby-lang.org/en/2.6.0/CSV.html


# Installation

Jeopardy requires Ruby 2.6.6 to run, I'd recommend running the following if you don't have it installed:

##### RVM + Ruby prerequisites
Install [RVM](https://rvm.io/rvm/install) then install Ruby 2.6.6, we will do something similar for the clixifix application.
```
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
rvm install ruby-2.6.6
rvm use 2.6.6
```

##### Installing Dependancies
Pull down the codebase and install all key dependancies
```
git clone https://github.com/clixifix/jeopardy.git
cd jeopardy
bundle install
```


##### Boot the server
If you're editing anything other than `./views/` files, you'll need to restart the webserver for changes to take effect by doing CTRL + C and rerun
```
cd jeopardy
ruby app.rb
```

