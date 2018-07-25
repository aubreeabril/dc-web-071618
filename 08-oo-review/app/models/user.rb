class User
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
# `User.find_by_name(name)`: given a string of a **full name**, returns the first users whose full name matches
  def self.find_by_name(name)
    User.all.find do |users|
      users.full_name == name
    end
  end
# `User.all_names`: should return an array of all of the user full names
  def self.all_names
    User.all.map do |users|
      users.full_name
    end
  end
#- `User#reviews`: return a unique list of a given user's reviews
  def reviews
    Review.all.select do |r|
      r.user == self
    end
  end
#- `User#album_reviews(album)`: return a user's reviews of a given album
  def album_reviews(album)
    reviews.select do |r|
      r.album == album
    end
  end
#- `User#add_review(album, review_content)`: add a new album review for a given user
  def add_review(album, content, rating)
    Review.new(self, album, content, rating)
  end

  def find_review(album)
    reviews.select do |r|
      r.album == album
    end
  end

end
