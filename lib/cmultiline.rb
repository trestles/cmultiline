require "cmultiline/version"

module Cmultiline
  # Your code goes here...
  def self.process str
    "here i am"
    a=str.scan(/\*\//).count
    b=str.scan(/\/\*/).count
    if a==b
      if str =~ /\*\//
        start=str.index("/*")
        endp=str.index("*/")
        frag=str[start..(endp+1)]
        str.gsub!(frag,'')
        self.process str if str =~ /\*\//
        return str
      else
        return str
      end
    else
      return str
    end
  end
end
