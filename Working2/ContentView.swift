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
    @State var showForm: Bool = false
    
    @State var personList: [Person] = []
    
    var body: some View {
        VStack {
            NavigationStack{
                List(personList) {
                    List in
                    VStack(alignment: .leading){
                        Text(List.name)
                            .bold()
                        Text("\(List.age)") //String interpolation
                    
                    }
                }
                .navigationTitle("User Registered")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button("", systemImage: "plus"){
                            showForm.toggle()
                            
                            
                        }
                    }
                }
                
                
            }
            .sheet(isPresented: $showForm){
                AddPerson(personList: $personList)
            }
            
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
