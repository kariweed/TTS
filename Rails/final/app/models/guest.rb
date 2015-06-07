class Guest < ActiveRecord::Base
  has_attached_file :document, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :document, :content_type => ["application/pdf","application/vnd.ms-excel",     
             "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
             "application/msword", 
             "application/vnd.openxmlformats-officedocument.wordprocessingml.document", 
             "text/plain"]
end