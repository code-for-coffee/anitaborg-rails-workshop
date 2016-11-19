# Anita Borg Ruby on Rails Workshop :gem: :monorail: :station:

Source code for the Anita Borg Rails workshop on 11/19 at ThoughtWorks Chicago

###### *Pre-flight Checklist* :rocket:
 
* Did you install Ruby on Rails on your computer? 
    - http://installrails.com/ & 
    - http://railsinstaller.org/en are both great resources.
* Make sure you install Rails version 4.x. 
* Open terminal/command prompt and run the following commands:
    - `ruby --version` (expected: version 2.x+)
    - `rails --version` (expected: version 4.x+)
* Official Requirements:
    * Rails 5 requires Ruby 2.2.2 or newer.
    * Rails 4 prefers Ruby 2.0 and requires 1.9.3 or newer.

## Learning Objectives :heavy_check_mark:

We are going to be building a Ruby on Rails application that allows users to save positive notes that everyone can see and share. 
The goal of this workshop is to walk away with the following:

- An understanding of the Ruby on Rails ecosystem
- Knowledge of the Model-View-Controller (MVC) design pattern
- Ability to identify common components in the Rails ecosystem
- Describe how to use Rake to manipulate database and model creation
- Generate controllers that allow users serve content
- Manipulate Views to create a user experience layer
- Understand basic HTTP routes and how they map to controllers

If any of these objectives do not make sense, do not fear! We will be introducing them throughout the workshop.

###### Intended Audience :book:

This workshop is aimed at those who are familiar with programming to some degree. You do _not_ need Ruby experience. However, you will need to be comfortable with the command line of your operating system (`command.exe` or `Bash` or whatever you use). The more familiarity with Ruby (or any object-oriented language), the better. Developers that use another MVC framework (such as Laravel, ASP.NET, Spring) will feel at home here.

###### Help! and Self-troubleshooting :raising_hand: 

If you run into a problem we will do our best to assist you throughout this workshop. However, due to issues out of our control, we may not be able to accommodate everyone. Older computers and Windows machines historically have run into issues in the past. If we are unable to assist you, do not fret - we can point you in the right direction after the workshop for help.

###### Pre-Workshop Troubleshooting :scream_cat:

If you run into any issues prior to the workshop, please [open a new issue](https://github.com/code-for-coffee/anitaborg-rails-workshop/issues/new) on Github (requires account registration) and copy/paste as much data as you can. Please also list your operating system, type of machine, and which guide(s) you followed to install Rails.

## Workshop Breakdown

- 09:30am - Introduction, MVC, and the big picture: PositiveCharge app
- 10:00am - Getting started: Database first application design
- 11:15am - Break
- 11:30am - Allow users to login and save data
- 12:30pm - Break
- 01:00pm - Display data to the general public & Conclusion
- 01:30pm - Wrap-up

## Resources

- Slide Deck: https://presentations.generalassemb.ly/64314ee3723c5bd0a6690b8f301b5641 (left/right arrow to navigate)
- Slide Deck Source: https://gist.github.com/code-for-coffee/64314ee3723c5bd0a6690b8f301b5641

## Cheatsheet

```bash
# create app
rails new positive_charges
# change into app directory that was just created
cd positive_charges
# generate user model, varchar is default type if not specified
rails g model person name email password_digest
# create database
rake db:create
# add the database table that we just created
rake db:migrate
rails g model bird name:string species:string origin:text
rails g model cheerup name:string content:text
#edit config/routes.rb
#resources :birds
# now the controllers
rails g scaffold_controller birds name:string species:string origin:text
rails g scaffold_controller cheerup name:string content:text
# launch server, test
rails s
```

## Rails Guide

#### 1. Create & open a new Rails project
**Note:** If you do not have Rails installed, you must install the gem: `gem install rails`!

This is a step-by-step guide to creating a new Rails application. Let's get started! To create a new rails app, you use the following syntax:
- `rails new app_name` .... or ....
- `rails new app_name -d postgresql -T`

Where `app_name` is the name of your application. For example, to create an app called `Coffee_Shop`, I would enter the following into my terminal: `rails new Coffee_Shop`

The `-d postgresql` tells rails to configure the application to use postgres. If you do not specifid the `-d` type, it will default to SQLite.

The `-T` tells rails to ommit including the default rails testing framework

This will create a new Ruby on Rails application in a new desdecent folder named after my app's name in the `rails new` command. Enter `ls` to see the folder and then `cd your_app_name` to move into your new app. To open your new Rails project, in **atom**, enter the following command: `atom .`

#### 2. Updating your Gemfile
Locate your application's `Gemfile`. Inside of it, you will comment out the following gem(s):

- `gem 'coffee-rails', '~> 4.1.0'`

You will also add the following gem(s):
- `gem 'rspec-rails'`

Once you've edited your `Gemfile`, it is time to feel the ground shake and `bundle`!

#### 3. Working with your project locally
- To view your project in the browser you will need to run a server (similar to `rack`).
- In your terminal, enter `rails server`
- Unlike `rack`, your project will be served at: `http://localhost:3000/`
- Note the difference in ports: `9292` vs `3000`

- To view your project in the console you will run `rails console`
- From this console, you can test out your models, for example.

#### 4. Generating Models
To generate a model for your project, you can run the following command:
- `rails generate model Name product_name:string description:text`

**Note: because we strive for efficiency, we'r going to start calling our rake commands in the `bin/` directory inside of our project!!!**

#### 5. Database Setup/Creation
To automatically generate SQL database tables based on your models, you can run the following command:
- `bin/rake db:create`

To run any changes in your migration scripts, you must run:
- `bin/rake db:migrate`

Finally, to create test entries for RSpec tests, you must run the following command:
- `bin/rake db:test:prepare`

#### 6. Creating Routes/Controllers
Create a controller to go along with our model.
- `bin/rails generate controller roasts index show edit new`

Where `rails generate controller` specifies that we're creating a new controller. `roasts` is the name. `index show edit new` are the actions to be generated in our controller.

We can also delete actions:
- `bin/rails d controller roasts index show edit new`

- `bin/rake routes` returns a list of routes in your Rails project.


#### 7. Install RSpec in your Project

Once you have included `rspec` in your project, you may generate unit test specs using the following command(s) in your termnial:

`rails generate rspec:install`


To run your tests in the command line:

- `bin/rake spec`

#### 8. Example RSpec Unit Test

```ruby
require 'rails_helper'

RSpec.describe Object, type: :model do

	describe 'given an object' do
		before do
			@object = Object.new()
		end

		describe '#to_s' do
			it 'returns an object is an "Object"' do
				expectation = @object.to_s # should return 'Object'
				actual = 'Object'
				expect(expectation).to eq(actual)
			end
		end

	end

end
```

####Misc
- In RSpec, `.` is a class method and `#` is an instance method

##Further Reading
- **Official Command Line Documentation**:  http://guides.rubyonrails.org/command_line.html
