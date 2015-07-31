# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create! :email => 'user4@example.com', :password => 'testpassword', :password_confirmation => 'testpassword'

#Poll.create! :title => 'What color is the sky?', :user_id => 1

Organization.create! :name=> 'People Who Love Animals', :info=> 'We love helping animals! Volunteer with us if you want to save puppies and kitties!', :website=> 'www.google.com', :phone => '8438675309', :address => '132 Emma St', :active=> true
Organization.create! :name=> 'Houses for Humans', :info=> 'We are better than Habitat for Humanity', :website=> 'www.google.com', :phone => '8438675309', :address => '132 Emma St', :active=> true
Organization.create! :name=> 'Help the Homeless', :info=> 'We hate the homeless...ness problem in this city', :website=> 'www.google.com', :phone => '8438675309', :address => '132 Emma St', :active=> true

Event.create! :name=> 'Walk the shelter dogs', :startDate => Time.now, :endDate =>Time.now, :location =>'The shelter', :info =>'Help us walk the dogs', :picture =>'http://my10online.com/wp-content/uploads/2011/09/4480604.jpg' :maxVolunteers => 5, :active => true, :owner =>'People Who Love Animals'
Event.create! :name=> 'Build a House', :startDate => Time.now, :endDate =>Time.now, :location =>'137 Emma St', :info =>'Help us build a house', :picture =>'http://www.stlouiscountymn.gov/portals/0/E-Graphics/Icons/PCD/Building.jpg', :maxVolunteers => 5, :active => true, :owner =>'Houses for Humans'
Event.create! :name=> 'Serve Food', :startDate => Time.now, :endDate =>Time.now, :location =>'137 Emma St', :info =>'Help serve food at the shelter', :picture =>'http://nursing.stanbridge.edu/wp-content/uploads/2011/07/IMG_0347.jpg', :maxVolunteers => 5, :active => true, :owner =>'Help the Humans'
		