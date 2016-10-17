/*:

Brevity is the soul of wit.
William Shakespeare.

## Strive for Fluent Usage
* Name functions and methods according to their side-effects
:*/
// Those without side-effects should read as noun phrases, e.g. x.distance(to: y), i.successor().
// x.distance(to: y)
// Those with side-effects should read as imperative verb phrases, e.g., print(x), x.sort(), x.append(y).
/*:
* Prefer to name the nonmutating variant using the verb’s past participle
:*/
var tot: String

/*:
* Initializer and factory method calls should form a phrase that does not include the first argument
:*/

/*:
 * Arguments Labels
 - Omit all labels when arguments can’t be usefully distinguished,
 - When the first argument forms part of a prepositional phrase, give it an argument label.
 - Label all other arguments.
:*/
//https://www.hackingwithswift.com/swift3
names.indexOf("Taylor")
names.index(of: "Taylor")

"Taylor".writeToFile("filename", atomically: true, encoding: NSUTF8StringEncoding)
"Taylor".write(toFile: "somefile", atomically: true, encoding: String.Encoding.utf8)

SKAction.rotateByAngle(CGFloat(M_PI_2), duration: 10)
SKAction.rotate(byAngle: CGFloat(M_PI_2), duration: 10)

UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
UIFont.preferredFont(forTextStyle: UIFontTextStyle.subheadline)

override func numberOfSectionsInTableView(tableView: UITableView) -> Int
override func numberOfSections(in tableView: UITableView) -> Int

func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView?
func viewForZooming(in scrollView: UIScrollView) -> UIView?

NSTimer.scheduledTimerWithTimeInterval(0.35, target: self, selector: #selector(createEnemy), userInfo: nil, repeats: true)
Timer.scheduledTimer(timeInterval: 0.35, target: self, selector: #selector(createEnemy), userInfo: nil, repeats: true)

/*:
 [Previous](@previous) | [Next](@next)
:*/