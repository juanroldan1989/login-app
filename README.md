<div align="left">
  <a href="https://github.com/juanroldan1989/login-app"><img width="250" src="https://github.com/juanroldan1989/login-app/raw/master/app/assets/images/login.png" alt="login-app logo" /></a>
</div>

# Login App

[![Code Climate](https://codeclimate.com/github/juanroldan1989/login-app/badges/gpa.svg)](https://codeclimate.com/github/juanroldan1989/login-app)
[![Build Status](https://travis-ci.org/juanroldan1989/login-app.svg?branch=master)](https://travis-ci.org/juanroldan1989/login-app)
[![Coverage Status](https://coveralls.io/repos/github/juanroldan1989/login-app/badge.svg?branch=master)](https://coveralls.io/github/juanroldan1989/login-app?branch=master)

Web application built to showcase functionalities and tests coverage.

### Requirements

- Present a login page that takes an email and password
- The login dialog should be inside a box that's centered horizontally and vertically on the window as per the attached mockup
- It should be responsive and be 400px wide on a large screen yet shrink to fit an iphone sized portrait screen
- It should validate the email and password (min length 8)
- It should have tests
- It should build for distribution so the app is minified
- It should mock an API response that succeeds unless the password is 'password' where the auth fails
- It should indicate auth failure and success in the UI

### Development

Clone repository:
```
$ git clone git@github.com:juanroldan1989/login-app.git
```

Install gems:
```
$ bundle install
```

Setup DB:
```
$ cp config/application.sample.yml config/application.yml
$ rake db:create db:migrate
```

Run server:
```
$ rails s
```

Test suite:
```
$ rake db:test:prepare
$ rspec spec/
```

### Live app

- https://login-demo-app.herokuapp.com
