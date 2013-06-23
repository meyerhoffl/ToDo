class Task < ActiveRecord::Base
  attr_accessible :title
  belongs_to :list
  scope :completed, where(:completed => true)
  scope :incomplete, where(:completed => false)

end