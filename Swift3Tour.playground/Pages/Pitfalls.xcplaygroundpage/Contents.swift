
//: # Pitfalls
//: Ok, you run the migration tool, is that all?
//:
//: **NO!**
//: - You code will not compile straight away
//:    * fix it, make it compile
//:    * run unit test: make them passed
//: - Cautious about Type:
//:    * Any vs AnyObject
//:    * Swift wrapper: Data vs NSData not the same!
//:    * NSMutableURLRequest / NSURLRequest is replaced by URLRequest: use var or let
//: - Redesign your API naming
//:    * think about labels
//:    * method naming
//:    * lower case enum
//:
//: [Previous](@previous) | [Next](@next)
