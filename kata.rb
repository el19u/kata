# count = 0
# star = ""

# while count < 5
#   star += "*"
#   count+=1
#   puts star
# end

# def is_leap_year?(y)
#   y%4 == 0 && y%100 != 0 || y%400 == 0
# end

# puts is_leap_year?(1998)  # 印出 false
# puts is_leap_year?(2000)  # 印出 true
# puts is_leap_year?(2100)  # 印出 false

# def bmi_calculator(height, weight)
#   bmi = (weight / (height**2.0)*10000).round(1)
# end

# puts bmi_calculator(170, 50) # 印出 17.3 (小數點以下一位，四捨五入)
# puts bmi_calculator(180, 65) # 印出 20.1 (小數點以下一位，四捨五入)

# BMI = 體重(公斤) / 身高2(公尺2)

# p arr =  [1, 3, 4, 1, 7, nil, 7].compact.uniq.sort
# p [*1..100].select(&:odd?).sum

# def calc_parking_fee(vehicle_type, parking_hour)
#   pay = 0
#   parking_hour = parking_hour.ceil
  
#   case vehicle_type
#   when :motocycle
#     pay = 20
#   when :car
#     if (parking_hour <= 2)
#       pay = 40 * parking_hour
#     else
#       pay = 80 + (parking_hour - 2) * 30
#     end

#     if (pay >= 500)
#       pay = 500
#     end
#   end
#   return pay
# end

# puts calc_parking_fee(:motocycle, 2)  # 印出 20
# puts calc_parking_fee(:motocycle, 8)  # 印出 20

# puts calc_parking_fee(:car, 1.5)      # 印出 80
# puts calc_parking_fee(:car, 4)        # 印出 140
# puts calc_parking_fee(:car, 5.5)      # 印出 200
# puts calc_parking_fee(:car, 18)       # 印出 500

# class ATM
#   def initialize(amount)
#     @balance = amount
#   end

#   def withdraw(amount)
#     @balance = @balance - amount
#   end

#   def deposit(amount)
#     @balance = @balance + amount
#   end

#   def balance
#     return @balance
#   end
# end

# atm = ATM.new(10)

# atm.withdraw(5)
# puts atm.balance  # 印出 5

# atm.deposit(10)
# puts atm.balance  # 印出 15

# def generate_odd_numbers(n)
#   [*1..n].filter(&:odd?)
# end

# p generate_odd_numbers(7)  # 印出 [1, 3, 5, 7]
# p generate_odd_numbers(15) # 印出 [1, 3, 5, 7, 9, 11, 13, 15]
# p generate_odd_numbers(8)  # 印出 [1, 3, 5, 7]
# p generate_odd_numbers(6)  # 印出 [1, 3, 5]
# p generate_odd_numbers(3)  # 印出 [1, 3]

# def calc_area(radius)
#   area = 3.1415926
#   if radius > 0
#     radius = (radius * radius * area).round(2)
#   else
#     puts "Radius must greater than zero!"
#   end
# end

# puts calc_area(8)   # 印出 201.06
# puts calc_area(10)  # 印出 314.16
# puts calc_area(15)  # 印出 706.86
# puts calc_area(-1)  # 印出 Radius must greater than zero!

# def generate_order_code(str)
#   "TN-#{("%07d"%str)}"
# end

# puts generate_order_code(29)    # 印出 TN-0000029
# puts generate_order_code(328)   # 印出 TN-0000328
# puts generate_order_code(1224)  # 印出 TN-0001224

# File.readlines('./score.csv').each do |line|
#   data = line.split(',')
#   avarge = data[1..5].map(&:to_i).sum / 5.0
#   p "#{data[0].capitalize}: #{avarge}"
# end

language = ['PHP', 'Python', 'Ruby', 'Perl', 'ASP', 'ActionScript', 'Objective-C', 'Swift', 'Kotlin', 'Go']

# p language.select {|lang| lang[0] == 'P'}
# p language.select {|lang| lang.start_with?('P')}

# p language.sort_by { |long| long.length }.first
# p language.min {|a,b| a.length <=> b.length}

# require 'date'

# def calc_age(birthday)
#   (((Date.today - Date.parse(birthday)).to_i) / 365.0).ceil
# end

# puts calc_age('1985/1/2')  # 印出 35
# puts calc_age('1997/8/28') # 印出 22

# def is_valid_company_no?(serial)
  
#   if serial.length != 8
#     "格式不符"
#   else
#     params = [1,2,1,2,1,2,4,1]

#     checkSum = 0
#     serial.split('').each.with_index do |s, index|
#       checkSum += (s.to_i * params[index]).divmod(10).sum
#     end
#     checkSum % 10 == 0 || serial[6] == '7' && (checkSum + 1) % 10 == 0
#   end
# end


# p is_valid_company_no?('2453680')  # 印出「格式不符」字樣
# p is_valid_company_no?('24536806') # 印出 true
# p is_valid_company_no?('12222539') # 印出 false

def calc_sum(param)
  if param.length == 1 || param[0] == nil
    
  else
    param.map(&:to_i).sum
  end
end

puts calc_sum([1, 2, 3, 4, 5])  # 印出 15
puts calc_sum(5)                # 印出 5
puts calc_sum(nil)              # 印出 0

