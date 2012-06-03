class ReportedDanger
  include Mongoid::Document
  
  field :danger_type,   :type => String
  field :location,      :type => String
  field :when,          :type => DateTime 
  field :description,   :type => String
  
  has_and_belongs_to_many :users
  
end
