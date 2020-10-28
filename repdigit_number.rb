#def repdigit(number)
#  array = number.to_s.split('').map(&:to_i)
#  digit = array.first
#  count = array.count { |number| number != digit }
#
#  if count == 0
#    true
#  else
#    false
#  end
#
#end
#
#p repdigit(7777)
#p repdigit(88879)
#
#
# Ruby sugar way to solve above challenge

def repdigit(number)
  array = number.to_s.split('').map(&:to_i)

  digit = array.first
  array.count { |item| item != digit } == 0
end

p repdigit(333)
p repdigit(6667)

def is_repdigit_ruby_way_1(number)
  number.to_s.squeeze.length == 1
end

p is_repdigit_ruby_way_1(8889)
p is_repdigit_ruby_way_1(777)

def is_repdigit_ruby_way_2(number)
  number.to_s.chars.uniq.length == 1
end

p is_repdigit_ruby_way_2(333)
p is_repdigit_ruby_way_2(332)
