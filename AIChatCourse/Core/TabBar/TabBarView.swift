//
//  TabBarView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct TabBarView: View {
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
          Label("Explore", systemImage: "person.fill")
        }
    }
  }
}

#Preview {
  TabBarView()
}
