# encoding: utf-8

class CphotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave 
 
   process eager: true  


  version :standard do
    resize_to_fit 350, 350
  end
end
