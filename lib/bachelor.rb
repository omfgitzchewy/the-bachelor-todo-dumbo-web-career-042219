def get_first_name_of_season_winner(data, season)
  data[season].each do |array|
    array.each {|type, value| return array["name"].split(" ")[0] if value == "Winner"}
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    array.each do |hash|
      hash.each {|type, value| return hash["name"] if value == occupation}
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each {|type, value| counter += 1 if value == hometown}
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    array.each do |hash|
      hash.each {|type, value| return hash["occupation"] if value == hometown}
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0.0
  num_contes = 0.0
  data[season].each do |array|
    array.each do|type, value|
      age_sum += array["age"].to_i
      num_contes += 1
    end
  end
  return (age_sum / num_contes).round
end
