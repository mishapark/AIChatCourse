//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct OnboardingCompletedView: View {
  @Environment(AppState.self) private var root

  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif

  var body: some View {
    VStack {
      Button {
        onFinishButtonPressed()
      } label: {
        Text("Finish")
          .callToActionButton()
      }
    }
    .padding(16)
    .enableInjection()
  }

  func onFinishButtonPressed() {
    root.updateViewState(showTabBarView: true)
  }
}

#Preview {
  OnboardingCompletedView()
    .environment(AppState())
}
