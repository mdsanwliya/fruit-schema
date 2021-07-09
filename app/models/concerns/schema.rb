module Schema
  extend ActiveSupport::Concern
  
  # Method to fetch schema names from database
  def schema_names
    ActiveRecord::Base.connection.schema_names
  end
end