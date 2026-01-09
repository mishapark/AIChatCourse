//
//  ProfileView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct ProfileView: View {
  @State private var showSettingsView: Bool = false
  var body: some View {
    NavigationStack {
      Text("Profile")
        .navigationTitle("Profile")
        .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
            settingsButton
          }
        }
    }
    .sheet(isPresented: $showSettingsView) {
      Text("SettingsView")
    }
  }

  private var settingsButton: some View {
    Button {
      onSettingsButtonPressed()
    } label: {
      Image(systemName: "gear")
        .font(.headline)
    }
    .tint(.accentColor)
  }

  private func onSettingsButtonPressed() {
    showSettingsView = true
  }
}

#Preview {
  ProfileView()
}
