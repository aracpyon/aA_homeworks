class LRUCache
    def initialize(n)
        @num_cache = n
        @cache = []
    end

    def count
      # returns number of elements currently in cache
      @cache.length
    end

    def add(el)
      # adds element to cache according to LRU principle
      if @cache.include?(el)
        @cache.delete(el)
        @cache.push(el)
      else 
        delete
        @cache.push(el)
      end
    end

    def show
      # shows the items in the cache, with the LRU item first
      @cache[-n..-1]
    end

    private
    # helper methods go here!
    def delete
        @cache.shift if count + 1 > @num_cache
    end
  end