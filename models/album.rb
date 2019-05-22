require('pg')
require('pry')
require_relative('artist')
require_relative('../db/sql_runner')

class Album

  def initialize(options)
    @id = options['id'] if options['id']
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id']
  end
end
