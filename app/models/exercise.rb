class Exercise < ActiveRecord::Base
  attr_accessible :activity, :completed, :units, :value, :user_id
  belongs_to :user
end
