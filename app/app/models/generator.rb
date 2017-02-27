class Generator < ApplicationRecord
  validates :start_param, presence: true
  validates :end_param, presence: true
end
