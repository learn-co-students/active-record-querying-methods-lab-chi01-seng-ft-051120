class Show < ActiveRecord::Base

    def self.highest_rating 
        self.maximum(:rating)
    end 

    def self.most_popular_show 
        self.find_by rating: self.highest_rating
        # max_rating = self.highest_rating 
        # self.where("rating = ?", max_rating).first
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show 
        self.find_by rating: self.lowest_rating
        # min_rating = self.lowest_rating
        # self.where("rating = ?", min_rating).first 
    end 

    def self.ratings_sum 
        self.sum(:rating)
    end 

    def self.popular_shows 
        self.where("rating > ?", 5)
    end 

    def self.shows_by_alphabetical_order
        self.order(:name)
    end 
end 