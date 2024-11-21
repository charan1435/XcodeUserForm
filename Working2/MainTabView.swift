//
//  MainTabView.swift
//  Working2
//
//  Created by Sabith Salman on 2024-11-22.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ContentView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
        
                }
                
            
            
            
            
        }
    }
}

#Preview {
    MainTabView()
}
