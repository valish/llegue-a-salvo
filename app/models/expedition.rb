class Expedition
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :origin,        :type => String
  field :destination,   :type => String
  
  ## Relationships
  embedded_in :user
  
end
