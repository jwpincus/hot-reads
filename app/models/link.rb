class Link < ApplicationRecord
  has_many :reads

  def self.hot
    select('links.*, COUNT(reads.id) AS read_count').
      joins(:reads).
      group('links.id').
      order('read_count DESC').
      limit(10)
  end
end
