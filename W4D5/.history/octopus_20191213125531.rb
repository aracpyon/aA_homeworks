FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def sluggish_octopus
    sorted = false

    while !sorted
        sorted = true

        (0...FISH.length - 1).each do |i|
            if FISH[i].length > FISH[i+1].length
                FISH[i], FISH[i+1] = FISH[i+1], FISH[i]
                sorted = false
            end
        end
    end

    FISH[-1]

end

p sluggish_octopus
# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.

def dominant(arr)
    return arr.dup if arr.length <= 1

    middle = arr.length / 2

    left = dominant(arr[0...middle])
    right = dominant(arr[middle..-1])

    merged(left, right)[-1]
end

def merged(left, right)
    merged = []
    
    until left.empty? || right.empty?
        if left[0].length > right[0].length
            merged << right.shift
        else
            merged << left.shift
        end
    end
    merged + left + right
end

p dominant(FISH)

# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

# slow_dance("up", tiles_array)
# > 0

# slow_dance("right-down", tiles_array)
# > 3
# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

# fast_dance("up", new_tiles_data_structure)
# > 0

# fast_dance("right-down", new_tiles_data_structure)
# > 3