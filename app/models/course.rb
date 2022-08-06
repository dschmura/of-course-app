class Course < ApplicationRecord
  acts_as_tenant :account

end
