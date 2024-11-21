//
//  ContentView.swift
//  Working2
//
//  Created by Sabith Salman on 2024-11-22.
//

import SwiftUI

struct Person: Codable , Identifiable {
     var id = UUID()
     var name : String
     var age : Int
     var eligibility : Bool
}

struct ContentView: View {
    
    @State var personList: [Person] = []
    
    var body: some View {
        VStack {
            NavigationStack{
                List(personList) {
                    List in
                    VStack{
                        Text(List.name)
                        Text("\(List.age)") //String interpolation
                    
                    }
                }
                .navigationTitle("User Registered")
            }
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
