//
//  OnboardingCompletedView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct OnboardingCompletedView: View {
  @Environment(AppState.self) private var root

  var body: some View {
    VStack {
      Text("Onboarding Completed!")
        .frame(maxHeight: .infinity)

      Button {
        onFinishButtonPressed()
      } label: {
        Text("Finish")
          .callToActionButton()
      }
    }
    .padding(16)
  }

  func onFinishButtonPressed() {
    root.updateViewState(showTabBarView: true)
  }
}

#Preview {
  OnboardingCompletedView()
    .environment(AppState())
}
