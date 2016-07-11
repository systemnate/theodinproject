Points to Ponder

Look through these now and then use them to test yourself after doing the assignment

Note: This is again a long list of things to understand! Read through the list, breathe deep, do the assignment, and then come back to them.

    Conditionals and Flow Control
        What is a "boolean"? - true or false values
        What are "truthy" values? - values that evaluate to true
        Are nil, 0, "0", "", 1, [], {} and -1 considered true or false? - everything except nil in this list evaluates to true
        When do you use elsif? - if you want to do a conditional branch only if the initial false statement evaluates to false
        When do you use unless? - when you want to make your code more readable instead of doing "if not"
        What does <=> do? in a <=> b, it will return -1 if a < b, 0 if a == b, and 1 if a > b.  It will return nil if they cannot be compared.
        Why might you define your own <=> method? - if you define it in your own class and include the Comparable module, your class gets >, < , >=, <=, ==, and between? methods for free.
        What do || and && and ! do? - || is or, && is and, and ! is not.  e.g. if a == 0 || b == 0
        What is returned by puts("woah") || true? - true since puts returns nil
        What is ||=? - in a ||= b if a is undefined, assign it the value of b
        What is the ternary operator? - used a shortcut if/else statement: if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
        When should you use a case statement? - sometimes it can be much more condense to do control flow using a case statement.  Especially if you are matching on multiple values, regex, etc.

    Blocks, Procs, and Lambdas:
        How is a block like a function? - 
        How is a block different from a function?
        What are the two ways to declare a block? - do/end or {}
        How do you return data from a block?
        What happens if you include a return statement in a block?
        Why would you use a block instead of just creating a method?
        What does yield do? - calls the block passed in
        How do you pass arguments to a block from within a method? - yield(argument)
        How do you check whether a block was actually passed in? - use block_given? 
        What is a proc? - similar to a block, but an object and can be stored in a variable
        What's the difference between a proc and a block? - proc is an object, block is not, can call proc
        When would you use a proc instead of a block? - DRY up code (store in variables)
        What is a closure?
        What is a lambda? - similar to a proc, except checks number of arguments and passes control back to calling method
        What's different between a lambda and a proc?  - see above
        What is a Method (capital "M")?
        What do Methods basically allow you to do that could probably be pretty interesting when you're writing some more advanced programs later on?

    Enumerable and Modules
        What is a module?
        Why are modules useful?
        What does #each do?
        What does #each return?
        What does #map do?
        What does #map return?
        What is the difference between #map and #collect?
        What does #select do?
        What does #select return?
        What is the difference between #each #map and #select?
        What does #inject do?
        When might you use #inject?
        How do you check if every item in a hash fulfills a certain criteria?
        What about if none of the elements fulfill that criteria?
        What (basically) is an enumerator?

    Writing Methods
        How many things should a method ideally do? - ONE
        What types of things should a method modify?
        What should you name a method?
        What does self mean?
        What do you need to do to create your own Ruby script file?
        How would you run a Ruby script from the command line?
        How can you check whether your script was being run from the command line?
        What is a shebang line?
        What does require do?
        What does load do?
        What is the difference between require and load?
        How do you access any parameters that were passed to your script file from the command line?
        What does #send do?
        When would #send be used that's different from just running the method on an object 'normally'?

