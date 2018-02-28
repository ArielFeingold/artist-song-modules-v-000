module Memorable
  module ClassMethods
    def self.reset_all
      @@songs.clear
    end

    def count
      @@artists.count
    end
  end
end
