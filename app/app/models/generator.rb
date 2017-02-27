class Generator < ApplicationRecord
  validates :start_param, presence: true, numericality: { only_integer: true }
  validates :end_param, presence: true, numericality: { only_integer: true }
end
