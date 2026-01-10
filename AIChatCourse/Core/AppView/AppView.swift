//
//  AppView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-07.
//

import SwiftUI

struct AppView: View {
  @State private var appState: AppState

  init(appState: AppState = AppState()) {
    _appState = State(initialValue: appState)
  }

  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif

  var body: some View {
    AppViewBuilder(showTabBar: appState.showTabBar) {
      TabBarView()
    } onboardingView: {
      WelcomeView()
    }
    .environment(appState)
    .enableInjection()
  }
}

#Preview("AppView - Tabbar") {
  AppView(appState: AppState(showTabBar: true))
}

#Preview("AppView - Onboarding") {
  AppView(appState: AppState(showTabBar: false))
}
