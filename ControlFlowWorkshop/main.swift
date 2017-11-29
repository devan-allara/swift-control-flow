//
//  main.swift
//  ControlFlowWorkshop
//
//  Created by Devan Allara on 08/29/17.
//  Copyright © 2017 Devan Allara. All rights reserved.
//

import Foundation

/* 1
 Loops
 Loops are used when there is a block of code we need to repeat more than once.  Sometimes we
 are checking if a condition has been met, have a set number of times we want it to run or
 want to check each item of a collection for certain things. Which loop you used will really depend on the situation that you are using it in.
 

  2.1
 While loops
 While loops take a condition that we are wanting to watch and while that condition is true it will execute the
 code inside its statement.
 while(condition){  **CODE HERE**  }
 */

var whileCondition = true
var count = 0
while whileCondition {
    print("Our while condition is true.  Adding 1 to our count")
    count = count + 1
    if count == 3 {
        print("Our count is at 3")
        whileCondition = false
    }
}

//What happens if out condition is false to begin?

var falseCondition = false
count = 0
while falseCondition {
    print("Our while condition is true.  Adding 1 to our count")
    count = count + 1
    if count == 3 {
        print("Our count is at 3")
        whileCondition = false
    }
}

/*As we can see here our loop never executes, this is because we check for the condition
first.  The while loop is not guaranteed to run at all */


/* 2.2
 Repeat While loops
 Repeat while loops take a block of code and execute it while a condition is true.  It is much
 like the while loop, the biggest difference is that the block of code you have in your do
 loop will always execute  at least once. This is because we tell it to DO something before we
 check to see if our condition is true or not
 */

var repeatWhileCondition = true
count = 0

repeat {
    print("Our do while condition is true.  Adding 1 to our count");
    count = count + 1
    if count == 3 {
        print("Our count is at 3")
        repeatWhileCondition = false
    }
} while repeatWhileCondition


/* 2.3
 For Loops
 For loops are used when we want to execute a block of code a specific number of times.  So if
 we know exactly how many times we want the code to run instead of checking for a specific
 condition this is what we would use. Just like in our fizzbuzz example, we knew we needed
 that code to run 100 times.This takes a range of numbers such as 0...100 to know how mant
 times it will run as well as a variable to act as our current position in the loop.
 */

for i in 0...5 {
   print(i)
}

/* 3.1
 Infinite loops
 When we use all loops there is a chance we could make a mistake in how we create them
 accidentally create an infinite loop.  This happens when there is no way for our condition to
 be true no matter how long it runs.  In a for loop it could be that we are incrementing but
 need to be decrementing the variable modifier.  Maybe we are telling it to keep going until
 the number is greater than less than something but we're incrementing the variable.
 There are a lot of ways this can happen, logic errors are common and they aren't detected in
 our code until we run it to test what is going on.
 */

//Uncomment below to show infinite loop
//        var infiniteLoop = true
//        while infiniteLoop {
//           print("Loop)
//       }


/* 2.4
 For Loops and Collections
 For loops can also be used to loop thru different collections lie arrays.We haven't covered
 collection types like Arrays and Lists yet so we will only do a brief overview of
 how this one works. But you will be able to come back to this and take a look at it again
 once we cover these. The way to think about this is, FOR each item in the collection I want
 to check a condition or get information about that item.
 */

var fruit = ["Apple", "Strawberry", "Bananna", "Kiwi", "Orange"]

for i in fruit {
    if i.contains("b") || i.contains("B") {
        print(i)
    }
}

