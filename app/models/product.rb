class Product < ActiveRecord::Base
  has_attached_file :photo, styles: {small: "150x150>"},
                    url: "/assets/products/:id/:style/:basename.:extension",
                    path: ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  validates_attachment_content_type :photo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
