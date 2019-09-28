require 'pry'
 require_relative '../lib/concerns/memorable'
 require_relative '../lib/concerns/paramable'
 
class Artist
  
  extend Memorable::ClassInstances
  include  Memorable::InstanceMethods
  include Paramable  
  
  attr_accessor :name
  attr_reader :songs

  @@artists = []
  
  def initialize
    super
    #self.class.all << self replaced with super
   # super keyword will execute any code placed inside the super class' method of the same name, and then execute any code inside the child class' method.
    @songs = []
end

#refactored above
  # def initialize
  #   @@artists << self
  #   @songs = []
  # end

  def self.find_by_name(name)
    @@artists.detect{|a| a.name == name}
  end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end

# name.downcase.gsub(' ', '-') replace white spaces with dashes.