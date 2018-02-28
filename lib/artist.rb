require 'pry'

class Artist
  extend Memorable::ClassMethods
  # include Memorable::InstanceMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def self.all
    @@artists
  end

  def initialize
    @@artists << self
    @songs = []
  end

  def add_songs(songs)
    @songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end

end
