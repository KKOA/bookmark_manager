require 'data_mapper'
require 'dm-postgres-adapter'

# This class corresponds to a table in the database
# links table <=> link class
class Link
  include DataMapper::Resource

  # these property declarations set the column headers in the 'links' table
  property :id, Serial # auto-increment integer
  property :title, String
  property :url, String
end

# Specify Database connection
source = 'postgres://localhost/bookmark_manager_test'
DataMapper.setup(:default,source)

DataMapper.finalize
# checks the models for validity and initializes all properties associated with relationships
DataMapper.auto_upgrade!
# build any new columns or tables we added
