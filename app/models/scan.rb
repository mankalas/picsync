class Scan < ApplicationRecord
  include AASM

  aasm no_direct_assignment: true do
    state :pending, initial: true
    state :in_progress, :successful, :in_error, :interrupted

    event :run do
      transitions from: :pending, to: %i[in_progress in_error]
    end

    event :succeed do
      transitions from: :in_progress, to: :successful
    end

    event :fail do
      transitions from: :in_progress, to: :in_error
    end

    event :interrupt do
      transitions from: :in_progress, to: :interrupted
    end

    event :resume do
      transitions from: :interrupted, to: :in_progress
    end
  end

  has_many :local_directories

  def run_scan
    LocalDirectory.all.each do |d|
      d.scan
    end
  end
end
