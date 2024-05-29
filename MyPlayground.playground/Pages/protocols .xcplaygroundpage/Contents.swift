import Foundation

protocol CarDataSource
{
    var color: String {get set}
    func drive ()
    func isAllWheelDrive()->Bool
}

class Car {
    
}
class BMW : Car, CarDataSource {
    var color: String
    
    init (color:String){
        self.color = color
    }
    func drive(){
        
    }
    func isAllWheelDrive() ->Bool {
        return true
    }
}
