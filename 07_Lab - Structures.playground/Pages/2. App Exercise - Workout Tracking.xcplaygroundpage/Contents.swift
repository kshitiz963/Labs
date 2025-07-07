/*:
## App Exercise - Workout Tracking
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Your fitness tracking app wouldn't be much of a fitness tracker if it couldn't help users track their workouts. In order to track a user's run, you'll need to have some kind of data structure that can hold information about the workout. For the sake of simplicity, you'll focus specifically on running workouts.
 
 Create a `RunningWorkout` struct. It should have variables properties for `distance`, `time`, and `elevation`. All three properties should have default values of 0.0.
 */
struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation: Double = 0.0
}

//:  Create a variable instance of `RunningWorkout` called `firstRun` without supplying any arguments. Print out all three properties of `firstRun`. This is a good example of when using default values is appropriate, seeing as all running workouts start with a distance, time, and elevation change of 0.
var firstRun = RunningWorkout()
print("Initial distance: \(firstRun.distance) meters")
print("Initial time: \(firstRun.time) minutes")
print("Initial elevation: \(firstRun.elevation) meters")


/*:
[Previous](@previous)  |  page 2 of 10  |  [Next: Exercise - Memberwise and Custom Initializers](@next)
 */
