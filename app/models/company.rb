class Company < ApplicationRecord
  enum :japanese_level, { not_required: 0, basic: 1, business: 2, fluent: 3 }, default: :not_required
  enum :remote_policy, { onsite: 0, hybrid: 1, remote: 2 }, default: :onsite

  validates :name, presence: true
end
