def is_valid(s)
  queue = []
  close_to_open = { ")" => "(",
                    "]" => "[",
                    "}" => "{"
                  }
  
  s.split("").each do |bracket|
    if close_to_open.key?(bracket)
      if !queue.empty? && queue[-1] == close_to_open[bracket]
        queue.pop
      else
        return false
      end
    else
      queue << bracket
    end
  end
  queue.empty?
end
