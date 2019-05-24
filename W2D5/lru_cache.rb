class LRUCache
    def initialize(n)
        @size = size 
        @cache = [] 
    end

    def count 
        @cache.size 
    end

    def add(el)
        if @cache.include?(el)
            @cache.delete(el)
            @cache << el 
        elsif count >= @size 
            @cache.shift 
            @cache << el 
        else
            @cache << el  
        end
    end

    def show 
        puts @cache 
    end

    private 
end
