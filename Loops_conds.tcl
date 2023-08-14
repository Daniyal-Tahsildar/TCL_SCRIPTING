#!/cygdrive/c/Users/daniy/anaconda3/Library/bin/tclsh

#check how many args passed in cmd line
if {$argc == 0} {
    puts "give command line argument as script.tcl -num NUMBER"
}

#assign variables to the command line
set fields [split $argv " "]


lassign $fields a b

if {$a == "-num"} {set num $b}

#check if divisible by 3 and 7

for {set i 1} {$i <= $num} {incr i} {
    if {$i % 3 == 0 && $i % 7 == 0} {
        puts $i
            #set div [lappend $div $i]
    }
}

#generating random numbers
for {set i 0} {$i < 10} {incr i} {
    set random [expr 100 + round(rand()*20)]

    puts $random

}

#generating random numbers without repetition
for {set i 0} {$i < 10} {} {
    set random [expr 100 + round(rand()*20)]
# set flag
    set in_array_f 0
    
        for {set j 0} {$j < $i} {incr j} {

            #check if element already present
            if {$array_is($j) == $random} {
                #update flag
                set in_array_f 1
                break
            }
        }
#add element to array
        if {$in_array_f == 0} {
            set array_is($i) $random
            incr i 
        }  
}

#print each element of array 
foreach index [array names array_is] {
    puts "without repeat: $array_is($index)"
}

