require("pry")
require('pg')
require_relative('models/album')
require_relative('models/artist')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({'name' => 'The Band'})
artist1.save
artist2 = Artist.new({'name' => 'Miles Davis'})
artist2.save

album1 = Album.new({
  'title' => 'Music From Big Pink',
  'genre' => 'Folk Rock',
  'artist_id' => artist1.id
  })
album1.save
album2 = Album.new({
  'title' => 'Moondog Matinee',
  'genre' => 'Folk Rock',
  'artist_id' => artist1.id
  })
album2.save

artist_list = Artist.all
album_list = Album.all

binding.pry
nil
