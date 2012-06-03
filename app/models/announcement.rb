class Announcement
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :content,   :type => String
  
  embedded_in :user, :inverse_of => :announcements
  
end
