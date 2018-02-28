module Memorable
  module ClassMethods
    def reset_all
      @@songs.clear
    end

    def count
      @@artists.count
    end
  end
end
