class Map
    def initialize
        @arr = []
    end

    def set(key, value)
        pair_index = @arr.index { |pair| pair[0] == key }
        if pair_index
          @arr[pair_index][1] = value
        else
          @arr.push([key, value])
        end
        value
      end
    
      def get(key)
        @arr.each { |pair| return pair[1] if pair[0] == key }
        nil
      end
    
      def delete(key)
        value = get(key)
        @arr.reject! { |pair| pair[0] == key }
        value
      end
    
      def show
        deep_dup(@arr)
      end
    
      
      def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
      end  
end
