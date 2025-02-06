//
//  ContentView.swift
//  whatsappCloneDuenas
//
//  Created by english on 2025-01-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            HomePageView()
                .tabItem {
                    Label("Chats", systemImage: "bubble.left.and.text.bubble.right.fill")
                }
            NewsPageView()
                .tabItem {
                    Label("News", systemImage: "ellipsis.message")
                }
            CommunityPageView()
                .tabItem {
                    Label("Communities", systemImage: "person.3.fill")
                }
            CallsPageView()
                .tabItem {
                    Label("Calls", systemImage: "phone.badge.waveform.fill")
                }
                
        }
        
    }
}

#Preview {
    ContentView()
}
