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
