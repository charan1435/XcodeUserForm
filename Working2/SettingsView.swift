//
//  SettingsView.swift
//  Working2
//
//  Created by Sabith Salman on 2024-11-22.
//

import SwiftUI

struct SettingsView: View {
    @State var fontSize: Double = 20.0
    var body: some View {
        NavigationStack{
            VStack{
                Slider(value: $fontSize , in: 0...100, step: 1)
                Text("Font Size \(String(format: "%.2f", fontSize))")
            }
            
                .navigationTitle("Settings")
        }
        
    }
}

#Preview {
    SettingsView()
}
