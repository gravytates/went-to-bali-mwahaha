# _Bollywood Memorabilia_

This site is my week 3 independent rails project. It is designed to start as a fork from another project from another programmer who is no longer with our agency. Goals included implementation of AJAX functionality, testing, and refactored features, before finishing the site for my fictitious new agency. Useful gems used in this application include rails_admin, bcrypt, simpleCov, factoryGirl, poltergeist, and faker.

## Prerequisites

Web browser with ES6 compatibility
Examples: Chrome, Safari

### Installing

Clone this repo by typing into the terminal:
```
$ git clone https://github.com/gravytates/went-to-bali-mwahaha
```

In a new terminal window, start postgres in the background:
```
$ postgres
```

Navigate to this project directory in the terminal. Then type:

```
$ bundle install
```

After the gems are installed set up the database:

```
$ bundle exec rails db:setup
```

To run the app:
```
$ bundle exec rails server
```
If all went well, rails will now make this project available in your browser by going to localhost:3000.

To log in as admin, provided credentials are:
```
email: adming@adming
```
```
password: 123456
```

### Testing

This application includes both Unit and User Integration testing. It primarily uses RSpec, Capybara, Shoulda-Matchers, and Poltergeist.

## Screenshots

## Authors

* Grady Shelton

### Technologies Used

* Ruby
* Rails
* Bundler
* Postgres
* RSpec
* Javascript (ES6)
* Jquery 3
* HTML5
* SASS
* FactoryGirl
* Bcrypt
* SimpleCov
* PhantomJS
* Poltergeist
* Faker
* Capybara
* Rails Admin


## License

MIT License

Copyright (c) 2017 Grady Shelton
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
