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
    var body: some View {
        VStack {
            
            Text("Project Update")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
