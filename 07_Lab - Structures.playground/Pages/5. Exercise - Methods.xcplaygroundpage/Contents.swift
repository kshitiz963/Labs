/*:
## Exercise - Methods
 
 A `Book` struct has been created for you below. Add an instance method on `Book` called `description` that will print out facts about the book. Then create an instance of `Book` and call this method on that instance.
 */
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    func description() -> String {
        return title + " by " + author + " has " + String(pages) + " pages and costs $" + String(price)
    }
}
let book1 = Book(title: "End is the beginning", author: "j.k.rowling", pages: 1000, price: 4000.9)
let bookDescription = book1.description()
print(bookDescription)



//:  A `Post` struct has been created for you below, representing a generic social media post. Add a mutating method on `Post` called `like` that will increment `likes` by one. Then create an instance of `Post` and call `like()` on it. Print out the `likes` property before and after calling the method to see whether or not the value was incremented.
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    mutating func like() {
        likes += 1
    }
}
    
var myPost = Post(message: "hello", likes: 20, numberOfComments: 30)
print("likes before: \(myPost.likes)")
myPost.like()
print("likes after: \(myPost.likes)")


/*:
[Previous](@previous)  |  page 5 of 10  |  [Next: App Exercise - Workout Functions](@next)
 */
