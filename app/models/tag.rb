class Tag < ActiveRecord::Base
  belongs_to :joint

  validates_uniqueness_of :name, :scope => :joint_id
end
