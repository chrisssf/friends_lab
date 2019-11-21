def get_name(person)
  return person[:name]
end


def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if person[:favourites][:snacks][1] == food
    return true
  else
    return false
  end
end


def add_friend(person, friend)
  return person[:friends].push(friend).length
end


def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].length
end


def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end


def loan_of_money(lender, lendee, amount)
  new_lendee = lendee[:monies] + amount
  new_lender = lender[:monies] - amount
  return [new_lendee, new_lender]
end


def combined_food(people)
  combined_food_array = []
  for person in people
    person[:favourites][:snacks].each { |a| combined_food_array << a }
  end
  return combined_food_array
end


def no_friends(people)
  no_friends = []
  for person in people
    if person[:friends].empty?
      no_friends << person[:name]
    end
  end
  return no_friends
end
