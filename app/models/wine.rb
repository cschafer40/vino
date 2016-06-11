class Wine < ActiveRecord::Base
validates :brand, :presence => true, :uniqueness => {:scope => :style_grape}
validates :style_grape, :presence => true
validates :rating, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5}

mount_uploader :label, LabelUploader

end
