def print_array (n, ar)
    k = 0;
    while k < n do
        print (ar[ k ]).to_s + " "
        k = k + 1
    end
    puts
end
    
def quicksort(p1, r1, a1)
    q = 0 # key
    if (p1 < r1)#do we have elements to sort in this partition?
        then
            q = partition(a1, p1, r1) #array will be devided to 2 partitions
            #quicksort (p1, q - 1, a1) # sort left part - requrtion
            #quicksort (q + 1, r1, a1) #sort right part - requrtion
        end
end
    
def partition(array, p, r)
    x = array[r] # take last element
    temp = 0
    i = p - 1
    j = p
    while (j < r) do #go thrue partition
        if(array[j] <= x)#is this element less then last? if yes, change places of them (places will be changed back)
            then
                i = i + 1
                temp = array[i]
                array[i] = array[j]
                array[j] = temp
            end
            j = j + 1
    end
    #change places of elements
    temp = array[i + 1]
    array[i + 1] = array[r]
    array[r] = temp
    return (i + 1) #return next key
end


n = 7 #array size
p = 0 #pointer on first element
r = n - 1 #pointer on last element
    
#simple partition
a = [2,6,7,-1,3,5,0]
print "array: "
print_array(n, a)
quicksort(p, r, a)
puts "array sorted by quicksort: "
print_array(n, a)
puts "  "



