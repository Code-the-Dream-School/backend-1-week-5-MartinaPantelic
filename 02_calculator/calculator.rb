#write your code here
def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.inject(0, :+)
    # array.inject(0){|sum,x| sum + x }
    #check how this works, enum
end