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

  @State private var isCompletingProfileSetup: Bool = false
  var selectedColor: Color = .orange

  var body: some View {
    VStack(alignment: .leading, spacing: 12) {
      Text("Setup complete!")
        .font(.largeTitle)
        .fontWeight(.semibold)
        .foregroundStyle(selectedColor)

      Text("We've set up your profile and you're ready to go!")
        .font(.title)
        .fontWeight(.medium)
        .foregroundStyle(.secondary)

    }
    .frame(maxHeight: .infinity)
    .safeAreaInset(edge: .bottom) {
      ctaButton
    }
    .padding(24)
    .toolbar(.hidden, for: .navigationBar)
    .enableInjection()
  }

  private var ctaButton: some View {
    Button {
      onFinishButtonPressed()
    } label: {
      ZStack {
        if isCompletingProfileSetup {
          ProgressView()
            .tint(.white)
        } else {
          Text("Finish")
        }
      }
      .callToActionButton()
    }
    .disabled(isCompletingProfileSetup)
  }

  func onFinishButtonPressed() {
    isCompletingProfileSetup = true
    Task {
      try await Task.sleep(for: .seconds(3))
      isCompletingProfileSetup = false
      // try await saveUserProfile(color: selectedColor)
      root.updateViewState(showTabBarView: true)
    }
  }
}

#Preview {
  OnboardingCompletedView()
    .environment(AppState())
}
