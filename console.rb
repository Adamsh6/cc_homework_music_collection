require("pry")
require('pg')
require_relative('models/album')
require_relative('models/artist')

Artist.delete_all

artist1 = Artist.new({'name' => 'The Police'})
artist1.save



binding.pry
nil
