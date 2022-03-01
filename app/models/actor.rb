class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        name_array = self.characters.map {|c| "#{c.name} - #{c.show.name}" }
        # shows_array = self.shows.map {|s| s.name}
        # name_array  shows_array
    end


end

