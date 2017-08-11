# encoding: utf-8

class CphotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave 
 
   process eager: true  

  process convert: 'jpg'

  version :standard do
    resize_to_fit 800, 600
  end
end
