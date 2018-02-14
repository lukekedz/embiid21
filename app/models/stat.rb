class Stat < ActiveRecord::Base
  default_scope { order(id: :desc) }
end
