#!/cygdrive/c/Users/daniy/anaconda3/Library/bin/tclsh
#generate prime numbers for any number given by the user

if {$argc == 0} {
    puts " add an argument using -num as shown in the format\n filename.tcl -num NUMBER"
}

set fields [split $argv " "]
lassign $fields a b 
if {$a == "-num"} {set num $b}

for {set i 2} {$i <= $num} {incr i} {
    set is_prime 1

    for {set j 2} {$j <= [expr $i/2]} {incr j} {
        if {$i % $j == 0} {
            set is_prime 0
            break
        }
    }
    if {$is_prime == 1} {
        puts "prime number using for loop = $i"
    }
}

#using while loop
set i 2
while {$i <= $num} {
    set is_prime 1
    set j 2 

    while {$j <= [expr $i/2]} {
        if {$i % $j == 0} {
            set is_prime 0
            break
        }
        incr j
    }
    if {$is_prime == 1} {
        puts "prime number using while loop = $i"
    }
    incr i
}