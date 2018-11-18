class Scan < ApplicationRecord
  STATUS = {
    0 => :scheduled,
    1 => :in_progress,
    2 => :successful,
    3 => :in_error,
    4 => :interrupted
  }.freeze

  TRANSITIONS = {
    0 => [1, 3],
    1 => [2, 3, 4],
    2 => [],
    3 => [],
    4 => []
  }.freeze

  has_many :local_directories

  validates :status, inclusion: { in: STATUS.keys }
end
