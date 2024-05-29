import Foundation

//this is just a high computational function to test the difference between lazy and compuataional variable
struct calculator {
    static func calculateGamesPlayed () -> Int {
        var games: [Int] = []
        for i in 1...4_000 {games.append(i)}
        return games.last!
    }
}


struct Player
{
    var name : String
    var team: String
    var position: String
    
    /*
     this could have been a lazy property here since we only want to run it when we require it
     and not always when instance is created
    , but right now its a computed property and will run each time it is called
     */
    var gamesPlayed: Int {
        return calculator.calculateGamesPlayed()
    }
    
    /*
     Here we make introduction lazy since during intilization we dont know
     about name , position and team
     */
    lazy var introduction = {
        return ("Now entering the game \(name) \(position) for the \(team)")
    }()
}

var Sachin = Player(name: "Sachin Tendulkar", team: "Mumbai Indians", position: "Batsmen")

/*here lazy varibale is only intialized after it is called ,
 but once after intialization it works like a normal variable
 */
print(Sachin.introduction)

//here every time games played it called the value will be computed 
print (Sachin.gamesPlayed)
print (Sachin.gamesPlayed)
print (Sachin.gamesPlayed)

