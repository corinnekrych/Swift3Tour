/*:
# Strive for Fluent Usage: Naming
![Shakespeare](quote.jpg)
Swift 3 is becoming more mature. 
Here is the [API Design guideline](https://swift.org/documentation/api-design-guidelines/).

### Name functions and methods according to their side-effects
 * Those without side-effects should read as noun phrases, e.g. x.distance(to: y), i.successor().
 
 * Those with side-effects should read as imperative verb phrases, e.g., print(x), x.sort(), x.append(y).
### Mutating/nonmutating pair - “ed” or “ing” suffix to name its nonmutating counterpart
x.sort() vs	z = x.sorted()
x.append(y)	vs z = x.appending(y)

### Initializer and methods label/arguments
 When naming arguments labels
 - Omit all labels when arguments can’t be usefully distinguished, min(number1, number2)
 - When the first argument forms part of a prepositional phrase, give it an argument label.
*/
// Wrong:
// a.move(toX: b, y: c)
//a.fade(fromRed: b, green: c, blue: d)
 
// Good:
//a.moveTo(x: b, y: c)
//a.fadeFrom(red: b, green: c, blue: d)
/*:
 - Label all other arguments.
 - consistent ules for init 
*/
// Wrong
// let foreground = Color(havingRGBValuesRed: 32, green: 64, andBlue: 128)
// Good
// let foreground = Color(red: 32, green: 64, blue: 128)

/*:
### Functional programming: good usage
* Prefer methods and properties to free functions BUT
min(x, y, z) makes sense there is no obvious self
* Otherwise use Generics
- Methods can share a base name when they share the same basic meaning:
x.contains(y)
- avoid “overloading on return type” because it causes ambiguities in the presence of type inference.
### Follow case conventions.
 - Names of types and protocols are UpperCamelCase.
 - Everything else is lowerCamelCase
*/
//: [Previous](@previous) | [Next](@next)

