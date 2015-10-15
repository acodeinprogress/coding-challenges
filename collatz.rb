COLLATZ_CACHE = []

def collatz_loops(num)
  collatz = num
  loops = 1
  while collatz != 1
    if COLLATZ_CACHE[collatz] != nil
      loops += COLLATZ_CACHE[collatz]
      COLLATZ_CACHE[num] = loops
      return loops
    end
    if collatz % 2 == 0
      collatz /= 2
    else
      collatz = (collatz * 3) + 1
    end
    loops += 1
  end
  COLLATZ_CACHE[num] = loops
  return loops
end

def collatz_times(num)
  i = 1
  collatz = 1
  highest_collatz = 0
  highest_i = 1
  while i < num
    collatz = collatz_loops(i)
    if collatz > highest_collatz
      highest_collatz = collatz 
      highest_i = i
    end
    i += 1
  end
  return highest_collatz, highest_i
end

print collatz_times(1000000)
