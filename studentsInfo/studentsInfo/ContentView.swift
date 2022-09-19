//
//  ContentView.swift
//  studentsInfo
//
//  Created by Macbook Air on 19/09/2022.
//

import SwiftUI
struct StudentsDetails: Identifiable {
 let id = UUID()
  var fullName = ""
  var year = 0
  var age = 0
}


struct ContentView: View {
    var students = [
        StudentsDetails(fullName:"Mariam", year:3, age:20),
        StudentsDetails(fullName:"Farah", year:3, age:19),
        StudentsDetails(fullName:"Ahmad", year:2, age:18)
    ]
    @State var counter = 0
    
    var body: some View {
        VStack{
            Image("id")
                .resizable()
                .scaledToFit()
            Text ("سجل الطلبة")
                .font(.largeTitle)
                .fontWeight(.heavy)
        List(students) {student in
            VStack{
                Text("Name: \(student.fullName)")
                    .multilineTextAlignment(.center)
                    .font(.headline)
                Text("Year: \(student.year)")
                    .multilineTextAlignment(.center)
                    .font(.headline)
                Text("Age: \(student.age)")
                    .multilineTextAlignment(.center)
                    .font(.headline)
            }
       
        }
            
            Text( " عدد الطلبة المسجلين: \(students.count)")
                .font(.largeTitle)
                .frame(width: 400, height: 60)
                .background(.blue)
                .opacity(0.5)
                .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
