def unique_letter(str)
  used_char = []

  str.chars.each_with_index do |item, index|
    next if used_char.include?(item)
    return index if str.chars.count(item) == 1

    used_char << item
  end
  return -1
end

string = "lleetcode"
p unique_letter(string)
