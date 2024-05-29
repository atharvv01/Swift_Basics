import Foundation
//struct Product : Equatable
//{
//    let name, brand, category : String
//}
//
//let Product1 = Product(name: "Macbook pro", brand: "Apple", category: "Laptop")
//
//let Product2 = Product(name: "Macbook pro", brand: "Apple", category: "Laptop")
//
//let result = Product1 == Product2
//
//print(result)


struct Product : Equatable
{
    let name, brand, category : String
    
    static func == (lhs: Product, rhs:Product) -> Bool
    {
        debugPrint("Inside custom equality operator function ")
        return lhs.category == rhs.category
    }
    
}

let Product1 = Product(name: "Macbook pro", brand: "Apple", category: "Electronics")

let Product2 = Product(name: "Canon EOS", brand: "Canon", category: "Electronics")

let result = Product1 == Product2

print(result)

