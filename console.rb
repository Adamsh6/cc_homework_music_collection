require("pry")
require('pg')
require_relative('models/album')
require_relative('models/artist')

Artist.delete_all

artist1 = Artist.new({'name' => 'The Band'})
artist1.save

album1 = Album.new({
  'title' => 'Music From Big Pink',
  'genre' => 'Folk Rock',
  'artist_id' => artist1.id
  })



binding.pry
nil
