class User < ActiveRecord::Base
  
  acts_as_authentic
  has_attached_file :photo,
                    :path => ':rails_root/public/system/:id.:extension'


  serialize :religion

end
