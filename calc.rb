
# checks for numerical input
def is_num?(x)
  x.to_i.to_s == x || x.to_f.to_s == x
end

# checks if teh input is one of the valid operators
def is_operator?(x)
  x.size == 1 && ( x == '+' || x == '-' || x == '*' || x =='/')
end

# prompts and gets a valid number or q.
# For q, modify the "cont" string to indicate a quit.
def get_valid_number(cont)
  loop do
    puts "Enter number or q:"
    val = gets.chomp()
    if (val == "q") 
      cont << val
      break
    end
    if is_num?(val)
      return val.to_f
    else
      puts "Input was not numerical."
    end
  end
end

def print_res(value)
  puts "The result is " + value.to_s
end

def get_valid_operator
  loop do
    puts "Enter + - * / or q:"
    val = gets.chomp()
    if(val == 'q')
      break
    end
    if is_operator?(val)
      return val
    else
      puts "Invalid operator."
    end
  end
end

def calculator
  # Intro
  puts "Simple calculator: + - * /"
  quit= ""
  loop do
    
    num1= get_valid_number(quit)
    if( quit == 'q')
      break
    end
  
    num2= get_valid_number(quit)
    if( quit == "q")
      break
    end
  
    op= get_valid_operator
    puts "operator is #{op}"
    if (op == '+')
      print_res(num1 + num2)
    elsif (op == '-')
      print_res(num1 - num2)
    elsif (op == '*')
      print_res(num1 * num2)
    elsif (op == '/')
      print_res(num1 / num2)
    else
      break
    end
  end
end

calculator
