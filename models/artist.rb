require('pg')
require("pry")
require_relative('../db/sql_runner')
require_relative('album')

class Artist

  def initialize(options)
    @id = options['id'] if options['id']
    @name = options['name']
  end


end
