class Picture < ApplicationRecord
  def self.newest_first
    Picture.order(created_at: :desc)
  end

  def self.most_recent_five
    Picture.newest_first.limit(5)
  end

  def self.created_before(time)
    Picture.where("created_at < ?", time)
  end

  validates :artist, presence: true
  validates :title, length: { in: 3..20}
  validates :url, uniqueness: true, presence: true
  validate :url_must_have

  def url_must_have
    # url_no_good = (url[0..3] != "http")
    # byebug
    # if url_no_good
    #   errors.add(:url, "does not begin with http")
    if url[0..3] == "http"
      return true
    else
      errors.add(:url, "does not begin with http")
    end
  end
end
