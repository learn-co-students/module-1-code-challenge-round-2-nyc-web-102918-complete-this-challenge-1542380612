class Movie
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    self.class.all << self
  end

  def self.all
    @@all
  end

  def queue_items
    QueueItem.all.select do |queue_item|
      queue_item.movie == self
    end

    def viewers
      Viewer.all.select do |viewer|
        viewers.queue_item == self
      end

      def average_rating

      end

      def highest_rated

      end
    end
  end
end 
