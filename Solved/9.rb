def triplet?(a,b,c)
  if a**2 + b**2 == c**2
    return true
  else
    return false
  end
end

triplets = []
for a in 1..998
  for b in 1..999-a
    c = 1000 - (a+b)
    if triplet?(a,b,c)
      puts a*b*c
      exit
    end
  end
end
