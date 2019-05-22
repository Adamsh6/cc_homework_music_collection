require('pg')
require("pry")
require_relative('../db/sql_runner')
require_relative('album')

class Artist

  def initialize(options)
    @id = options['id'] if options['id']
    @name = options['name']
  end

  def save
    sql = 'INSERT INTO artists (name) VALUES ($1) RETURNING id'
    values = [@name]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id']
  end

end
