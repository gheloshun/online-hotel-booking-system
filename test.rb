require 'date'
require 'active_support/time'
def get_blocked_date
  date1 = Date.parse('2020-02-14')
  date2 = Date.parse('2020-02-17')
  blocked_dates = []
    diff_days = ((date2 - date1).to_i)
    orig_date = date1
    diff_days.times do

      blocked_dates.push(orig_date.strftime("%Y-%m-%d"))
      orig_date = orig_date + 1.day
    end

  return blocked_dates
end

puts get_blocked_date
