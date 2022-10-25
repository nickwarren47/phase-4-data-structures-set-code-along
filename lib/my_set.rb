# your code here


# code from code along:
class MySet 
    def initialize(enumerable = []) 
        @hash = {}
        enumerable.each do |value| 
            @hash[value] = true 
        end
    end 
    def include?(value)
        @hash.has_key?(value)
    end
    def add(value)
        @hash[value] = true
        self
    end 
    def delete(value)
        @hash.delete(value)
        self
    end
    def size 
        @hash.size 
    end
end


# set = MySet.new([1,2,3,3])

# Code refactored (using attr_reader): 
class MySet 
    attr_reader :hash
    def initialize(enumerable = []) 
        @hash = {}
        enumerable.each do |value| 
            add(value)
        end
    end 
    def include?(value)
        hash.has_key?(value)
    end
    def add(value)
        hash[value] = true
        self
    end 
    def delete(value)
        hash.delete(value)
        self
    end
    def size 
        hash.size 
    end
end