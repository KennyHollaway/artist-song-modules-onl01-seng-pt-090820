require 'pry'

# require_relative '../lib/concerns/findable'
# require_relative '../lib/concerns/memorable'
# require_relative '../lib/concerns/paramable'

require_relative '../lib/artist.rb'
require_relative '../lib/song.rb'
module Paramable  
  module InstanceMethods
    def to_param
      name.downcase.gsub(' ', '-')
    end
  end
end

module Findable
  module ClassMethods
    def find_by_name(name)
      self.all.detect{|o| o.name}
    end    
  end
end

