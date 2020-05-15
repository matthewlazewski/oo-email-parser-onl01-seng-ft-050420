# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailAddressParser
    attr_accessor :name, :address 

   

    def initialize(address)
        @address = address 
    end 
   
    def parse
        
        parsed_address = @address.split.collect do |address|
            address.split(',')
        end
        parsed_address.flatten.uniq 
    end 

end 