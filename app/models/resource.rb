class Resource < ActiveRecord::Base
  belongs_to :space, touch: true
  belongs_to :location, touch: true

  has_many :plan_resources
  has_many :plans, through: :plan_resources

end
