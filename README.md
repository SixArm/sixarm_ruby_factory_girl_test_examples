SixArm.com → Ruby → <br> Factory Girl test examples for Rails

* Docs: <http://sixarm.com/sixarm_ruby_/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_>
<!--HEADER-SHUT-->


## Introduction

Factory Girl examples for the ThoughtBot factory_girl gem.
These are useful for our testing Ruby On Rails applications.

For docs go to <http://sixarm.com/sixarm_ruby_/doc>

Want to help? We're happy to get pull requests.


<!--INSTALL-OPEN-->

## Install

To install using a Gemfile, add this:

    gem "", ">= ", "< 1"

To install using the command line, run this:

    gem install  -v ">= , < 1"

To install using the command line with high security, run this:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem && gem sources --add http://sixarm.com
    gem install  -v ">= , < 1" --trust-policy HighSecurity

To require the gem in your code:

    require ""

<!--INSTALL-SHUT-->


## Details

These examples are built independent of any mock data tool.
You will most likely want to change these examples to suit
whichever mock data tool you like to use in your project.

We like these mock data tools:

  * forgery: best for custom dictionaries and generators.
  * faker: best as a straight port of the Perl Faker module. 
  * ffaker: faster faker, an optimization of the faker gem.
  * random_data: good for plausible anames, ddresses, etc.


## To create a collection of items

Simply call the factory like this:

    3.times { Factory(:user) }


## To create a collection for the "many" in a has_many

Do it in Factory Girl after_create on the belonging object.
So if you wanted a test with a Company with 3 Users:

    Factory.define :company_with_three_users do |blog|
      company.after_create do |belonging|
        3.times { Factory(:user, :company => belonging) }
      end
    end


## To create records that share parameters

Write a helper method:

    # in test/factories.rb or spec/factories.rb
    def two_companies_for(user = Factory(:user))
      [Factory(:company), Factory(:company)]
    end


## To connect cucumber steps for dynamic factories

Parse the cucumber step then send the match as a parameter:

    Given /^typical (\w+)/ do |name|
      Factory(name)
    end


## To do more advanced expert setup with callbacks

See this post about callbacks before and after factories: 

    http://robots.thoughtbot.com/post/254496652/aint-no-calla-back-girl
