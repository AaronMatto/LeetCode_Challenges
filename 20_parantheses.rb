# Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Example 2:

# Input: s = "()[]{}"
# Output: true
# Example 3:

# Input: s = "(]"
# Output: false

def is_valid(s)
  string_array = s.split("")
  parentheses = {
    ")" => 1,
    "(" => 1,
    "[" => 2,
    "]" => 2,
    "{" => 3,
    "}" => 3
  }

  valid = nil
  i = 0
  while i < string_array.length
    if parentheses[string_array[i]] == parentheses[string_array[i + 1]]
      valid = true
    else
      return valid = false
    end
    i += 2
  end

  valid
end


p is_valid("(){}{")

#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
