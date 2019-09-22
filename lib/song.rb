require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable
  include Paramable
  include Memorable::InstanceMethods
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.count
  end
  
  def self.find_by_name(name)
    self.all.detect {|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end
end
