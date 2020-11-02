##StandardError is the superclass of RunTimeError.
class LineInvalid < StandardError
end

def read_line(file,string)
    file_handler = File.open(file)
    read_line = file_handler.gets

    ##raise an exception if string is not exist in the line.
    raise LineInvalid unless read_line.include?(string)

    ##return line if string match
    return read_line

    ##handle the exception if it has been raised.
    rescue LineInvalid
        puts "Invalid line"
        raise
    ##ensure that file_handler get closed.    
    ensure
        file_handler.close
    end
end