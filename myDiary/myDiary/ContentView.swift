//
//  ContentView.swift
//  myDiary
//
//  Created by Macbook Air on 19/09/2022.
//

import SwiftUI

//struct DetailedView:  View {
//     Text("name")

struct DetailView: View {
    let name: String
    let color: Color

    var body: some View {
    
        ZStack{
        color
        Text(name)
     
    
        }
    }
}

struct ContentView: View {
    
    var chooseColor = [Color.pink , Color.gray , Color.blue , Color.green]
    @State var name = ""
    @State var selectedColor = Color.clear
    
    var body: some View {
        NavigationView{
            VStack{
                Text("اختر لونك المفضل")
                    .font(.largeTitle)
                    .padding()
                HStack{
                    ForEach(chooseColor, id: \.self) {color in
                        color
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                    .clipShape(Circle())
                    .font(.largeTitle)
                }
                Text("ماذا تريد ان تكتب")
                    .font(.largeTitle)
                    .frame(width: 300, height: 50)
                    .padding()
                
                TextField("اكتب هنا", text: $name)
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .frame(width: 300, height: 50)
                    .multilineTextAlignment(.center)
                    .background(.gray)
                    .opacity(0.4)
                    .padding()
                
                NavigationLink(destination: DetailView(name: name, color: selectedColor)){
                    Text("save")
                        .font(.largeTitle)
                        .navigationTitle("دفتر اليوميات")
                }
    
            }
            .padding()
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
