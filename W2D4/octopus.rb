# Can you not just solve this in O(n) time? #
### Sluggish Octopus ###


# Convert this to bubble sort, and do bubble sort
# Note: Tested it out in Pry, and it works
def sluggish_octopus(fish)
  sorted = false 
  while !sorted
   sorted = true 
   i = 0 
   while i < fish.size-1
     if fish[i].length > fish[i+1].length 
       fish[i], fish[i+1] = fish[i+1], fish[i] 
     end
     i += 1 
   end 
  end
  fish.last 
end

# Convert this into merge sort
# Works, tested in terminal 
def dominant_octopus(fish)
  return fish if fish.size <= 1
  mid = fish.size/2
  left = fish[0..mid-1]
  right = fish[mid..-1] 
  sorted_octo = octopus_helper(dominant_octopus(left), dominant_octopus(right))  
  sorted_octo.last
end

def octopus_helper(left, right)
  fish = [] 
  until left.empty? || right.empty? 
    if left.first.length < right.first.length 
      fish << left.shift 
    else
      fish << right.shift 
    end
  end
  fish + left + right
end


def clever_octopus(fish)
  longest_fish = fish[0]
  for i in 1..fish.size-1
    if fish[i] > longest_fish 
     longest_fish = fish[i] 
    end 
  end
  return longest_fish
end


# An array takes O(n) look up time BUT
# A hash takes only O(1) 

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, tiles_array)
  for i in 0..tiles_array.size-1 
    if tiles_array[i] == dir 
      return i 
    end
  end
end

def generate_hash(arr)
  h = Hash.new(0)
  for i in 0..tiles_array.size-1
    h[tiles_array[i]] = i
  end
  h
end

tiles_hash = generate_hash(tiles_array)

def constant_dance(dir, tiles_hash)
  tiles_hash[dir] 
end

