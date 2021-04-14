class Purchase < ApplicationRecord  
    attr_reader :isPaid
    def initialize(x)
        @isPaid = false
    end

end
