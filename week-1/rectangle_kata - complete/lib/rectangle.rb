def rectangle
  middle = ""
  8.times{middle += print_middle}
  print_top + middle + print_top
end

def print_top
  "|------------------|\n"
end

def print_middle
  "|                  |\n"
end
