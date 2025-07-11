import Foundation
/*:
## App Exercise - Food Functions
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 Suppose you want your fitness tracking app to give users the ability to log food. Once food has been logged, users should be able to go back and see what they ate at a specific meal.
 
 Write a function that takes a `String` parameter where you will pass in either "Breakfast," "Lunch," or "Dinner." The function should then return the `Meal` object associated with that meal, or return `nil` if the user hasn't logged that meal yet. Note that a `Meal` object and a dictionary, `meals`, representing the meal log have been created for you below. Call the function one or twice and print the return value.
 */
struct Meal {
    var food: [String]
    var calories: Int
}

var meals: [String: Meal] = ["Breakfast": Meal(food: ["Bagel", "Orange Juice", "Egg Whites"], calories: 530)]

func getMealLog(_ meal: String) -> Meal? {
    for (key, value) in meals{
        if key == meal{
            return value
        }
    }
    return nil
}

if let returnVal = getMealLog("Breakfast") {
    print("The food includes: ")
    for i in returnVal.food{
        print(i)
    }
    print("Total Calories: \(returnVal.calories)")
}else {
    print("No meal found")
}

if let returnVal = getMealLog("Lunch") {
    print(returnVal)
}else {
    print("No meal found")
}
/*:
 iOS comes with a few different APIs for persistence, or saving data. You'll learn more about persistence in another lesson, but for now imagine what an app experience would be like if every time you opened the app all of your data was gone. That would be frustrating, right?
 
 Write a function that will check to see if your meal log (a dictionary like that in the previous exercise) is saved to the device. If it is, return the meal log. If it isn't, return an empty dictionary of type `[String: Any]`. The code you should use in this exercise for retrieving something saved to the device is `UserDefaults.standard.dictionary(forKey: "mealLog")`. This code will return an optional `[String: Any]`. If it returns a value, that is your meal log. If it returns `nil`, then no meal log has been saved. Call the function and print the return value.
 */
func isMealLogSaved() -> [String: Any]? {
    if let savedMealLog = UserDefaults.standard.dictionary(forKey: "mealLog") {
        return savedMealLog
    } else {
        return nil
    }
}

print(isMealLogSaved() ?? "No meal saved")
/*:
[Previous](@previous)  |  page 4 of 6  |  [Next: Exercise - Failable Initializers](@next)
 */
