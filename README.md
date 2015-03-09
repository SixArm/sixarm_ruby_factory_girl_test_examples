# Ruby » <br> Factory Girl test examples for Rails

* Docs: <http://sixarm.com/sixarm_ruby_/doc>
* Repo: <http://github.com/sixarm/sixarm_ruby_>
* Email: Joel Parker Henderson, <joel@sixarm.com>


## Introduction

Factory Girl examples for the ThoughtBot factory_girl gem.
These are useful for our testing Ruby On Rails applications.

For docs go to <http://sixarm.com/sixarm_ruby_/doc>

Want to help? We're happy to get pull requests.


## Install quickstart

Install:

    gem install 

Bundler:

    gem "", "="

Require:

    require ""


## Install with security (optional)

To enable high security for all our gems:

    wget http://sixarm.com/sixarm.pem
    gem cert --add sixarm.pem
    gem sources --add http://sixarm.com

To install with high security:

    gem install sixarm_ruby_ --trust-policy HighSecurity


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


## Changes

* 2012-03-14 1.0.0 Update docs
## License

You may choose any of these open source licenses:

  * Apache License
  * BSD License
  * CreativeCommons License, Non-commercial Share Alike
  * GNU General Public License Version 2 (GPL 2)
  * GNU Lesser General Public License (LGPL)
  * MIT License
  * Perl Artistic License
  * Ruby License

The software is provided "as is", without warranty of any kind, 
express or implied, including but not limited to the warranties of 
merchantability, fitness for a particular purpose and noninfringement. 

In no event shall the authors or copyright holders be liable for any 
claim, damages or other liability, whether in an action of contract, 
tort or otherwise, arising from, out of or in connection with the 
software or the use or other dealings in the software.

This license is for the included software that is created by SixArm;
some of the included software may have its own licenses, copyrights, 
authors, etc. and these do take precedence over the SixArm license.

Copyright (c) 2005-2015 Joel Parker Henderson
