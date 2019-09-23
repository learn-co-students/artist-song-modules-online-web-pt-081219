module Paramable 
    def to_param
    name.downcase.gsub(' ', '-')
    # gsub subtitutes a with b 
    end 
end 