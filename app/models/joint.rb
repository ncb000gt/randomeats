class Joint < ActiveRecord::Base
  validates :name, :presence => true
  validates :desc, :presence => true
  #validates :tags, :presence => true

  has_many :tags, :dependent => :destroy, :uniq => true
end
