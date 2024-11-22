//
//  MainTabView.swift
//  Working2
//
//  Created by Sabith Salman on 2024-11-22.
//

import SwiftUI

struct MainTabView: View {
    @State private var fontSize: Double = 20.0
    var body: some View {
        TabView{
            ContentView(fontSize: $fontSize)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            SettingsView(fontSize: $fontSize)
                .tabItem{
                    Label("Settings", systemImage: "gear")
        
                }
                
            
            
            
            
        }
    }
}

#Preview {
    MainTabView()
}
