#!/opt/vagrant_ruby/bin/ruby

require 'rubygems'
require 'infusionsoft'

Infusionsoft.configure do |config|
  config.api_url = 'ik123.infusionsoft.com' # example infused.infusionsoft.com
  config.api_key = '6d7aff6d44d0522c076decc8f9259546'
end

Infusionsoft.data_load('Contact', 8, [:FirstName, :LastName])
Infusionsoft.contact_add_to_group(8, 129)
Infusionsoft.contact_add_to_group(8, 128)


Infusionsoft.contact_remove_from_group(8, 128)

Infusionsoft.contact_remove_from_group(8, 129)