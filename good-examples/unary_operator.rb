class UnaryOperator
    attr_reader :text
    def initialize(text)
        @text = text
    end
    #customizing unary operator +
    def +@
        text.upcase
    end
    #customizing unary operator -
    def -@
        text.downcase
    end
    ##all the object will be in string 
    def to_s
        text
    end
end
unary = UnaryOperator.new("Lets Test it.")
##without to_s method: #<UnaryOperator:0x00007fb87f0e5850>
##with to_s method: it will return text.
puts unary
puts +unary
puts -unary