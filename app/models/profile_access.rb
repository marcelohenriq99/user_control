class ProfileAccess < ApplicationRecord
  belongs_to :access_kind
  belongs_to :user_profile
end
