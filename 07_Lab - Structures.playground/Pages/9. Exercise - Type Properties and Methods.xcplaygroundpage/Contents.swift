/*:
## Exercise - Type Properties and Methods
 
 Imagine you have an app that requires the user to log in. You may have a `User` struct similar to that shown below. However, in addition to keeping track of specific user information, you might want to have a way of knowing who the current logged in user is. Create a `currentUser` type property on the `User` struct below and assign it to a `user` object representing you. Now you can access the current user through the `User` struct. Print out the properties of `currentUser`.
 */
struct User {
        
    var userName: String
    var email: String
    var age: Int
    
    static var currentUser: User?
        
    // A method to set the current logged-in user
    static func setCurrentUser(user: User) {
        currentUser = user
    }

    static func logIn(user: User) {
        currentUser = user
        print("\(user.userName) has logged in.")
    }
}

let myUser = User(userName: "Kshitiz", email: "kshitiz@gmail.com", age: 20)

// Setting this user as the current logged-in user
User.setCurrentUser(user: myUser)

if let loggedInUser = User.currentUser {
    print("Username: \(loggedInUser.userName)")
    print("Email: \(loggedInUser.email)")
    print("Age: \(loggedInUser.age)")
} else {
    print("No user is logged in.")
}
/*:
 There are other properties and actions associated with a `User` struct that might be good candidates for a type property or method. One might be a method for logging in. Go back and create a type method called `logIn(user:)` where `user` is of type `User`. In the body of the method, assign the passed in user to the `currentUser` property, and print out a statement using the user's userName saying that the user has logged in.
 
 Below, call the `logIn(user:)` method and pass in a different `User` instance than what you assigned to currentUser above. Observe the printout in the console.
 */

let anotherUser = User(userName: "Levy", email: "levy@gmail.com", age: 22)

// Logging in with myUser first
User.logIn(user: myUser)

// Then logging in with anotherUser
User.logIn(user: anotherUser)

// Checking the currentUser after logging in with anotherUser
if let loggedInUser = User.currentUser {
    print("Current logged in user: \(loggedInUser.userName)")
} else {
    print("No user is logged in.")
}

/*:
[Previous](@previous)  |  page 9 of 10  |  [Next: App Exercise - Type Properties and Methods](@next)
 */
