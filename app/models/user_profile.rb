class UserProfile < ApplicationRecord
    has_many :profile_accesses, dependent: :destroy

    accepts_nested_attributes_for :profile_accesses, allow_destroy: true
end
