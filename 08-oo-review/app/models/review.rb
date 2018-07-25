class Review
  attr_accessor :album, :content, :rating
  attr_reader :user

  @@all = []
  def initialize(user, album, content, rating=nil)
    @user = user
    @album = album
    @content = content
    @rating = rating
    @@all << self
  end



  def self.all
    @@all
  end

  def self.order_reviews
    self.all.sort_by do |review|
      review.content.length
    end
  end
#`Review#user`: returns the user object for a given review. Once a review has been made, the user should not change.
  def review_user
    self.user
  end
#`Review#album`: returns the album object for a given review. Again, no changing!
  def albums
    self.album
  end
#`Review#content`: returns the text of a review object's content property
  def contents
    self.content
  end

end
