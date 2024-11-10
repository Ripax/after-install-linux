#!/usr/bin/awk -f
BEGIN { 
  i = 1
  while (i < 6) { 
    print "Square of", i, "is", i*i; 
    ++i 
  } 
}
