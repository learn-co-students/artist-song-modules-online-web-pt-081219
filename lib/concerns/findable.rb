module Findable
  def find_by_name(name) 
    self.all.detect{|el| el if el.name == name}
  end
end