module UseStack
    def stack
        # =|| operator
        # When the first time stack is called, it will set @stack to an empty array, 
        # whereas on subsequent calls it will see that @stack already has a value and will simply return that value
        @stack ||= []
    end
    def add_to_stack(object)
        stack.push(object)
    end
    def remove_from_stack
        stack.pop
    end
end