# until birthday calculator
require 'date'

def next_leap_year(year_now)
  if year_now % 4 == 0
    year_now
  else
    while year_now % 4 != 0
      year_now +=1
    end
  end
  return year_now
end

def bday(birthday_date)
  date = birthday_date.split('-').map { |x| x.to_i }
  time = DateTime.new(date[0], date[1], date[2])
  now = DateTime.now
  if time.leap?
    if time.month == now.month && time.day == now.day
    0
    elsif DateTime.new(next_leap_year(now.year), date[1], date[2])> now
      (DateTime.new(next_leap_year(now.year), date[1], date[2]) - DateTime.new(now.year, now.month, now.day)).to_i
    else
      (DateTime.new(next_leap_year(now.year + 1), date[1], date[2]) - DateTime.new(now.year, now.month, now.day)).to_i
    end
  else
  if time.month == now.month && time.day == now.day
    0
  elsif DateTime.new(now.year, date[1], date[2])> now
    (DateTime.new(now.year, date[1], date[2]) - DateTime.new(now.year, now.month, now.day)).to_i
  else
    (DateTime.new(now.year + 1, date[1], date[2]) - DateTime.new(now.year, now.month, now.day)).to_i
  end
end
end
