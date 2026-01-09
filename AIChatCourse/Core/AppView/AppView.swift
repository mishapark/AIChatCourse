//
//  AppView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-07.
//

import SwiftUI

struct AppView: View {
  @AppStorage("showTabbarView") var showTabBar: Bool = false

  var body: some View {
    AppViewBuilder(showTabBar: showTabBar) {
      TabBarView()
    } onboardingView: {
      WelcomeView()
    }
  }
}

#Preview("AppView - Tabbar") {
  AppView(showTabBar: true)
}

#Preview("AppView - Onboarding") {
  AppView(showTabBar: false)
}
