def bubble_sort(array)
    repeat = true
    while repeat do
        repeat = false
        for i in 0..array.length-2 do 
            if array[i]>array[i+1] 
                array[i],array[i+1] = array[i+1],array[i]
                repeat = true
            end
        end
    end
    array
end

p bubble_sort([4,3,78,2,0,2])