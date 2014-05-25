class Sculp < ActiveRecord::Base
    mount_uploader :image, ImageUploader 
end
