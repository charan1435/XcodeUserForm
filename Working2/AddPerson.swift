//
//  AddPerson.swift
//  Working2
//
//  Created by Sabith Salman on 2024-11-22.
//

import SwiftUI

struct AddPerson: View {
    @Environment(\.dismiss) var dismiss
    @Binding var personList : [Person]
    
    @State var name: String=""
    @State var age: String=""
    let saveAction: () -> Void
   
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
                        if let validAge = Int(age), !name.isEmpty{
                            let newPerson = Person(name: name, age: validAge, eligibility: validAge >= 20)
                            personList.append(newPerson)
                            saveAction()
                            dismiss()
                            
                            
                        
                            
                        }
                        
                        
                    }
                
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("CANCEL"){
                        dismiss()
                        
                    }
                    .tint(.red)
                
                }
            }
        }
    }
}

#Preview {
    AddPerson(personList: .constant([]), saveAction: {})
}
