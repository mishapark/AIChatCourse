//
//  TabBarView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct TabBarView: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif

  var body: some View {
    TabView {
      ExploreView()
        .tabItem {
          Label("Explore", systemImage: "eyes")
        }
      ChatsView()
        .tabItem {
          Label("Chats", systemImage: "bubble.left.and.bubble.right.fill")
        }
      ProfileView()
        .tabItem {
          Label("Profile", systemImage: "person.fill")
        }
    }
    .enableInjection()
  }
}

#Preview {
  TabBarView()
}
