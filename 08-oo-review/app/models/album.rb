class Album
  attr_accessor :title, :artist, :year
  @@all = []
  def initialize(title, artist, year)
    @title = title
    @artist = artist
    @year = year
    @@all << self
  end

  def self.all
    @@all
  end
#- `Album.find_by_title(title)`: given a string of an album title, return the album hash that matches
  def self.find_by_title(title)
    self.all.find do |album|
      album.title == title
    end
  end
#- `Album#reviews`: returns an array of all of an album's reviews
  def reviews
    Review.all.select do |r|
      r.album == self
    end
  end
#- `Album#reviewers`: returns a unique list of all users who have reviewed an album
  def reviewers
    reviews.map { |r|
      r.user }.uniq
  end
#- `Album#longest_review`: returns the review with the longest 'content' property
  def longest_review
    Review.order_reviews.select do |r|
      r.album == self
    end[-1]
  end

end
