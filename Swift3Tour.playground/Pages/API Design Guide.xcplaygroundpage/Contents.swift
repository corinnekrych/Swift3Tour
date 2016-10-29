/*:
# Strive for Fluent Usage: Naming
![Shakespeare](quote.jpg)
Swift 3 is becoming more mature. 
Here is the [API Design guideline](https://swift.org/documentation/api-design-guidelines/).
 
Let's illustrate ot with [aerogear-ios-http]() and [aerogear-ios-push]() libraires which has been ported to Swift 3.

 ### Name functions and methods according to their side-effects
 * Those without side-effects should read as noun phrases, e.g. x.distance(to: y), i.successor().
*/
import Foundation
open class JsonResponseSerializer {
    open var validation: (URLResponse?, Data) throws -> Void
    open var response: (Data, Int) -> Any?
    public init() {
        response = { (data: Data, Int) -> Any? in /* do sth */ return nil}
        validation = { (response: URLResponse?, data: Data) -> Void in /* do sth */ }
    }
}
// validate has been rename validation

/*:
 * Those with side-effects should read as imperative verb phrases, e.g., print(x), x.sort(), x.append(y).
*/
public class AGDeviceRegistration {
    var properties: [String: String]?
    public func overridePushProperties(pushProperties: [String: String]) {
        self.properties = pushProperties;
    }
}
// become
open class DeviceRegistration {
    var properties: [String: String]?
    open func override(pushProperties: [String: String]) {
        self.properties = pushProperties;
    }
}
// use `override`, move `pushProperties` as a label
/*:
### Mutating/nonmutating pair - “ed” or “ing” suffix to name its nonmutating counterpart
*/
extension String {
    public func encoded() -> String {
        return "encoded value"
    }
    public mutating func encode() -> () {
        self = "encoded value"
    }
}
/*:
### Initializer and methods label/arguments
 When naming arguments labels:
 - Omit all labels when arguments can’t be usefully distinguished, min(number1, number2)
*/
public func merge(_ one: [String: String]?, _ two: [String: String]?) -> [String: String]? {
    var dict: [String: String]?
    // return one + two without doublon
    return dict
}
// Notice: By using _ we remove the usage of labels whene calling the function
merge(["k1": "v1", "k2": "v2"], ["k2": "v2", "k3": "v3"])
/*:
 - When the first argument forms part of a prepositional phrase, give it an argument label.
*/
// Wrong:
// a.move(toX: b, y: c)
 
// Good:
// a.moveTo(x: b, y: c)

/*:
 - Label all other arguments.
*/
public class Http {
    public func request(_ method: String, path: String, parameters: [String: Any]? = nil, credential: URLCredential? = nil, responseSerializer: Any? = nil, completionHandler: @escaping (Any, Error) -> ()) {}
    public init(baseURL: String? = nil) {}
}
let http = Http(baseURL: "http://server.com")

http.request("get", path: "/get", completionHandler: {(response, error) in
    // handle response
})
// become
//http.request(method: "get", path: "/get", completionHandler: {(response, error) in
    // handle response
//})
/*:
 - Consistent rules for init: init got all labels like functions/methods
*/
import UIKit
// Wrong
// let foreground = UIColor(colorWithRed: 32, green: 64, andBlue: 128)
// From Objective-C [UIColor colorWithRed:66 green:79 blue:91 alpha:1]
// Good
let foreground = UIColor(red: 32, green: 64, blue: 128, alpha: 1)

/*:
### Functional programming: the Good usage
* Prefer methods and properties to free functions BUT
*/
merge(["k1": "v1", "k2": "v2"], ["k2": "v2", "k3": "v3"])
// makes sense there is no obvious self
/*:
### Follow case conventions.
 - Names of types and protocols are UpperCamelCase.
 - Everything else is lowerCamelCase
*/
public enum HttpMethod: String {
    case GET = "GET"
    case POST = "POST"
    // ...
}
// becomes
public enum HttpMethod2: String {
    case get = "GET"
    case post = "POST"
    // ...
}
//: [Previous](@previous) | [Next](@next)

