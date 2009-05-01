# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
 def second_wednesday_in_month(target)
  first_weekday = Date.new(target.year, target.month, 1).wday
  second_wednesday = DateTime.new(target.year, target.month, 8 + (3 - first_weekday + 7 )% 7, 18, 30
, 0)
 end

 def next_meeting(current_date)
  sec_wed_this_month = second_wednesday_in_month(current_date)

  if current_date > sec_wed_this_month
    meeting_date = second_wednesday_in_month(1.month.since(current_date))
  else
    meeting_date = sec_wed_this_month
  end
 end 

end
