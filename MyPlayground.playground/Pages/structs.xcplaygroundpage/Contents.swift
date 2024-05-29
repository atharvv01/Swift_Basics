import Foundation

struct quiz {
    let title : String
    let dateCreated: Date
    
}

let quizTitle : String = "This is first quiz"
let quizDate :  Date = .now

let MyQuiz1 : quiz = quiz(title: quizTitle, dateCreated: quizDate)

//print(MyQuiz1.title)

//--------------------------------------------------------------------------//

/* this struct is immutable
 i.e its value cannot be changed since both values are constants
 */
struct userModel{
    let username : String
    let isPremium : Bool
}

var user1 :userModel = userModel(username: "Atharva", isPremium: false)

func isUserPremium() {
    
    print(user1)
    
    /* Here we assigned user1 with another struct since the struct was immutable,
     so assigned it to another struct by making changed in values we wanted
     */
    user1 = userModel(username: user1.username, isPremium: true)
    
    print(user1)
}
isUserPremium()

//------------------------------------------------------------------------------//

/* This struct is mutable since it has var in it */
struct userModel2 {
    let username : String
    var isPremium : Bool
}

var user2 : userModel2 = userModel2(username: "Ishaan", isPremium: true)

func isUserPremium2() {
    
    /* here below line is same as :
     user1 = userModel(username: user1.username, isPremium: true)
     but since here we have var we can directly modify nstead of creating new struct
     */
    user2.isPremium = false
    
    print(user2)
}

isUserPremium2()

//------------------------------------------------------------------------------//


