# https://leetcode.com/problems/ransom-note/

# initial solution (fairly fast)

def can_construct(ransom_note, magazine)
  dictionary1 = {}
  dictionary2 = {}

  magazine.chars.each do |c|
    if dictionary1[c]
      dictionary1[c] += 1
    else
      dictionary1[c] = 1
    end
  end

  ransom_note.chars.each do |c|
    if dictionary2[c]
      dictionary2[c] += 1
    else
      dictionary2[c] = 1
    end
  end

  dictionary2.all? do |key, value|
    return false unless dictionary1[key]
    dictionary1[key] >= value
  end
end
