class Product < ActiveRecord::Base
  has_attached_file :photo,
                    url: "/assets/products/:id/:style/:basename.:extension",
                    path: ":rails_root/public/assets/products/:id/:style/:basename.:extenstion"
end
