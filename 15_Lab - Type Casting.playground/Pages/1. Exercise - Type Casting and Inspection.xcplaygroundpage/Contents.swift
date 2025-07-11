/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var arr: [Any] = [1.0, 2, "three", true]
for i in arr {
    print(i)
}
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
 for i in arr {
    if let num = i as? Double {
        print("The double has a value of \(num)")
    } else if let num = i as? Int {
        print("The integer has a value of \(num)")
    } else if let str = i as? String {
        print("The string is \(str)")
    } else if let bool = i as? Bool {
        print("The boolean is \(bool)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
 var dict: [String: Any] = ["pi": 3.14, "answer": 42, "name": "ABC", "isStudent": true]
for (key, value) in dict {
    print("\(key): \(value)")
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for (key, value) in dict{
    if let num = value as? Double {
        total += num
    }else if let num = value as? Int {
        total += Double(num)
    }else if let str = value as? String {
        total += 1
    }else if let bool = value as? Bool {
        total += bool ? 2 : -3
    }
}

print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (key, value) in dict{
    if let num = value as? Double {
        total2 += num
    }else if let num = value as? Int {
        total2 += Double(num)
    }else if let str = value as? String, let num = Double(str) {
        total2 += num
    }
}

print(total2)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
