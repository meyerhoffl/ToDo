class List < ActiveRecord::Base
  attr_accessible :title
  has_many :list_tasks
  has_many :tasks, through: :list_tasks
end