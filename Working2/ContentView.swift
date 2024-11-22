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
    @Binding var fontSize: Double
    
    @AppStorage("personList") var storedPersonList : Data = Data()
    
    var body: some View {
        VStack {
            NavigationStack{
                List(personList) {
                    List in
                    VStack(alignment: .leading){
                        Text(List.name)
                            .font(.system(size: fontSize))
                            .bold()
                        Text("\(List.age)") //String interpolation
                            .font(.system(size: fontSize))
                    
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
                AddPerson(personList: $personList, saveAction: savePersonList)
            }
            
            
            
        }
        .padding()
        .onAppear(){
            loadPersonList()
        }
    }
    
    private func  savePersonList(){
        if let encodePersonList = try? JSONEncoder().encode(personList){
            storedPersonList = encodePersonList
        }
        
    }
    
    private func loadPersonList() {
        if let decodePersonList = try? JSONDecoder().decode([Person].self, from: storedPersonList){
            personList=decodePersonList
        }
    }
}

#Preview {
    ContentView(fontSize: .constant(20.0))
}
