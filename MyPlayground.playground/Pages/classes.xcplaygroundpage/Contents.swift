import Foundation

//classes are slow compared to structs
//classes are stored in heap memory
//objects in heap are refrence type

class screenViewModel {
    let title: String
    var showButton : Bool
    
    //here unlike structs you dont have implicit init , here you have to write init
    init(title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton
    }
    
    /*here unlike structs we also have deinit ,
     coz in structs , those are mutables and for every change a new struct is created ,
     but here in class when me make changes it is done for same class and no new class is created ,
     so thats why we need a deinit
     */
    deinit{
       //empty rightnow
    }
}

//here we created a object for a class
/*here we have used let i.e this is constant ,
 but we can still change the values of the objects since we arent actually changing the object here ,
 unlike struct no new struct is being created for making a change but same value is changed , so even if
 object is constant we can change the values of properties inside objects
 */
let viewModel: screenViewModel = screenViewModel(title: "Atharva", showButton: false)

//changing the value of showButton

viewModel.showButton = true
