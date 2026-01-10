//
//  OnboardingIntroView.swift
//  AIChatCourse
//
//  Created by Mikhail Pak on 2026-01-08.
//

import SwiftUI

struct OnboardingIntroView: View {
  #if DEBUG
    @ObserveInjection var forceRedraw
  #endif

  var body: some View {
    VStack {
      Text(
        "Make your own \(highlighted("avatars")) and chat with them!\n\nHave \(highlighted("real conversations")) with AI generated responses."
      )
      .frame(maxHeight: .infinity)
      .padding(24)
      .baselineOffset(6)

      NavigationLink {
        OnboardingColorView()
      } label: {
        Text("Continue")
          .callToActionButton()
      }
      .padding(16)
    }

    .font(.title3)
    .enableInjection()
  }

  private func highlighted(_ string: String) -> AttributedString {
    var text = AttributedString(string)
    text.foregroundColor = .accentColor
    text.font = .title3.weight(.semibold)
    return text
  }

}

#Preview {
  OnboardingIntroView()
}
