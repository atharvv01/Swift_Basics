import Foundation

/*
 A closure is nothing but self-contained blocks of functionality that can be passed around and used in your code.
 */

struct Student {
    let name : String
    var testScore : Int
}

let Students = [
    Student(name: "Atharva Zanwar", testScore: 100),
    Student(name: "Pranay", testScore: 65),
    Student(name: "Sumit", testScore: 34),
    Student(name: "Ayush", testScore: 90),
]
//this is closure syntax
//closure name  : ParamType -> return type
var topStudentFilter: (Student) -> Bool = {student in
    return student.testScore > 80
}

func topStudentFilterF (student :  Student) -> Bool {
    return student.testScore > 70
}

/*
 Now that closure is created we will pass it around
 */
let topStudents = Students.filter(topStudentFilter)

for topStudent in topStudents{
    print(topStudent.name)
}
