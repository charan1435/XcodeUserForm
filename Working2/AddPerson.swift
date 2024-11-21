//
//  AddPerson.swift
//  Working2
//
//  Created by Sabith Salman on 2024-11-22.
//

import SwiftUI

struct AddPerson: View {
    @Binding var personList : [Person]
    @State var name: String=""
    @State var age: String=""
   
    var body: some View {
        NavigationStack{
            Form{
                TextField("Enter Name", text: $name)
                TextField("Enter Age", text: $age)
            }
            .navigationTitle("Add Person")
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Button("ADD"){
                        
                    }
                
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("CANCEL"){
                        
                    }
                    .tint(.red)
                
                }
            }
        }
    }
}

#Preview {
    AddPerson(personList: .constant([]))
}
