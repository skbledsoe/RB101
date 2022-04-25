answer = 42

def mess_with_it(some_num)
  some_num += 8
end

new_answer = mess_with_it(answer)

p answer - 8
p new_answer - 8