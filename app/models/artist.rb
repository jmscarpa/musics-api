class Artist < ApplicationRecord
  validates :name, :slug, presence: true
  validates :name, :slug, uniqueness: true

  before_validation :set_slug

  def set_slug
    self.slug = name.parameterize
  end
end
